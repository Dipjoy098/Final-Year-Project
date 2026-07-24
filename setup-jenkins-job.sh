#!/bin/bash
# ============================================================================
# Create + run the ecommerce-deploy Jenkins pipeline job, end to end.
#
# What it does (no clicking in the Jenkins UI):
#   1. reads Jenkinsfile.windows from this repo
#   2. rewrites its WORKDIR line to this project's real Windows path
#   3. creates (or updates) a Pipeline job with that script inline
#   4. triggers a build
#   5. streams the build's console output until it finishes
#
# Run it from Git Bash inside the project:
#     ./scripts/setup-jenkins-job.sh
#
# Auth: Jenkins needs a user + API token (Dashboard > your name > Security >
# Add new token). You can pass them as env vars or the script will prompt:
#     JENKINS_URL=http://localhost:8090 \
#     JENKINS_USER=admin JENKINS_TOKEN=xxxx ./scripts/setup-jenkins-job.sh
# ============================================================================
set -euo pipefail

JENKINS_URL="${JENKINS_URL:-http://localhost:8090}"
JOB="${JOB:-ecommerce-deploy}"

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

JF="$ROOT/Jenkinsfile.windows"
[[ -f "$JF" ]] || { echo "ERROR: $JF not found — run this from inside the project."; exit 1; }

say() { printf '\n\033[1;36m==> %s\033[0m\n' "$1"; }
die() { printf '\033[1;31mERROR: %s\033[0m\n' "$1" >&2; exit 1; }

# --- credentials -----------------------------------------------------------
JENKINS_USER="${JENKINS_USER:-}"
JENKINS_TOKEN="${JENKINS_TOKEN:-}"
if [[ -z "$JENKINS_USER" ]]; then
  read -rp "Jenkins username: " JENKINS_USER
fi
if [[ -z "$JENKINS_TOKEN" ]]; then
  read -rsp "Jenkins API token (or password): " JENKINS_TOKEN; echo
fi
AUTH="$JENKINS_USER:$JENKINS_TOKEN"

# --- work out this project's Windows path for WORKDIR ----------------------
if command -v cygpath >/dev/null 2>&1; then
  ROOT_WIN="$(cygpath -w "$ROOT")"            # C:\Users\abc\...\ecommerce-platform
else
  ROOT_WIN="$ROOT"                            # non-Windows: leave as-is
fi
ROOT_GROOVY="${ROOT_WIN//\\/\\\\}"            # escape backslashes for the Groovy string
say "Project path (WORKDIR): $ROOT_WIN"

# --- build the pipeline script with WORKDIR filled in ----------------------
SCRIPT_FILE="$(mktemp)"
sed -E "s|^([[:space:]]*WORKDIR[[:space:]]*=[[:space:]]*).*|\1\"${ROOT_GROOVY}\"|" "$JF" > "$SCRIPT_FILE"
if ! grep -q "$ROOT_GROOVY" "$SCRIPT_FILE"; then
  echo "WARNING: could not rewrite WORKDIR automatically — check the WORKDIR line in Jenkinsfile.windows."
fi

# --- assemble config.xml (inline Pipeline job) -----------------------------
CONFIG_FILE="$(mktemp)"
{
  cat <<'XML_HEAD'
<?xml version='1.1' encoding='UTF-8'?>
<flow-definition plugin="workflow-job">
  <description>ecommerce-platform deploy pipeline (created by setup-jenkins-job.sh)</description>
  <keepDependencies>false</keepDependencies>
  <properties/>
  <definition class="org.jenkinsci.plugins.workflow.cps.CpsFlowDefinition" plugin="workflow-cps">
    <script><![CDATA[
XML_HEAD
  cat "$SCRIPT_FILE"
  cat <<'XML_TAIL'
]]></script>
    <sandbox>true</sandbox>
  </definition>
  <triggers/>
  <disabled>false</disabled>
</flow-definition>
XML_TAIL
} > "$CONFIG_FILE"

# --- CSRF crumb + session cookie -------------------------------------------
JAR="$(mktemp)"
say "Connecting to $JENKINS_URL"
CRUMB_JSON="$(curl -fsS -c "$JAR" -u "$AUTH" "$JENKINS_URL/crumbIssuer/api/json" 2>/dev/null || true)"
CRUMB_HDR=()
if [[ -n "$CRUMB_JSON" ]]; then
  FIELD="$(echo "$CRUMB_JSON" | grep -o '"crumbRequestField":"[^"]*"' | cut -d'"' -f4)"
  CRUMB="$(echo  "$CRUMB_JSON" | grep -o '"crumb":"[^"]*"'            | cut -d'"' -f4)"
  [[ -n "$FIELD" && -n "$CRUMB" ]] && CRUMB_HDR=(-H "$FIELD: $CRUMB")
fi

jcurl() { curl -fsS -b "$JAR" -u "$AUTH" "${CRUMB_HDR[@]}" "$@"; }

# sanity: are we authenticated?
jcurl -o /dev/null "$JENKINS_URL/api/json" \
  || die "Cannot authenticate to Jenkins. Check JENKINS_URL / username / token."

# --- create or update the job ----------------------------------------------
if curl -fsS -b "$JAR" -u "$AUTH" -o /dev/null "$JENKINS_URL/job/$JOB/api/json" 2>/dev/null; then
  say "Job '$JOB' exists — updating its pipeline script"
  jcurl -X POST -H 'Content-Type: application/xml' \
    --data-binary @"$CONFIG_FILE" "$JENKINS_URL/job/$JOB/config.xml"
else
  say "Creating job '$JOB'"
  jcurl -X POST -H 'Content-Type: application/xml' \
    --data-binary @"$CONFIG_FILE" "$JENKINS_URL/createItem?name=$JOB"
fi

# --- trigger a build, capture the queue item -------------------------------
say "Triggering a build"
QUEUE_URL="$(jcurl -D - -o /dev/null -X POST "$JENKINS_URL/job/$JOB/build" \
             | tr -d '\r' | awk 'tolower($1)=="location:"{print $2}')"
[[ -n "$QUEUE_URL" ]] || die "Build was not queued (no Location header)."

# --- wait for the queue item to become a running build --------------------
say "Waiting for the build to start"
BUILD_NUM=""
for _ in $(seq 1 60); do
  NUM="$(jcurl "${QUEUE_URL%/}/api/json" 2>/dev/null \
         | grep -o '"number":[0-9]*' | head -1 | cut -d: -f2 || true)"
  if [[ -n "$NUM" ]]; then BUILD_NUM="$NUM"; break; fi
  sleep 2
done
[[ -n "$BUILD_NUM" ]] || die "Build did not start in time. Check $JENKINS_URL/job/$JOB"
say "Build #$BUILD_NUM started — streaming console ($JENKINS_URL/job/$JOB/$BUILD_NUM)"
echo

# --- stream the console output until the build ends ------------------------
START=0
while true; do
  RESP="$(curl -fsS -b "$JAR" -u "$AUTH" -D - \
          "$JENKINS_URL/job/$JOB/$BUILD_NUM/logText/progressiveText?start=$START" 2>/dev/null || true)"
  HEADERS="$(printf '%s' "$RESP" | sed -n '1,/^\r\{0,1\}$/p')"
  BODY="$(printf '%s' "$RESP" | sed '1,/^\r\{0,1\}$/d')"
  [[ -n "$BODY" ]] && printf '%s' "$BODY"
  MORE="$(printf '%s' "$HEADERS" | tr -d '\r' | awk 'tolower($1)=="x-more-data:"{print tolower($2)}')"
  NEXT="$(printf '%s' "$HEADERS" | tr -d '\r' | awk 'tolower($1)=="x-text-size:"{print $2}')"
  [[ -n "$NEXT" ]] && START="$NEXT"
  [[ "$MORE" == "true" ]] || break
  sleep 2
done

# --- final result ----------------------------------------------------------
RESULT="$(jcurl "$JENKINS_URL/job/$JOB/$BUILD_NUM/api/json" 2>/dev/null \
          | grep -o '"result":"[^"]*"' | head -1 | cut -d'"' -f4 || true)"
echo
say "Build #$BUILD_NUM finished: ${RESULT:-UNKNOWN}"
[[ "$RESULT" == "SUCCESS" ]] || exit 1
