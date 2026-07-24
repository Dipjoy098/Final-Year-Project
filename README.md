Patch your local copy on Windows
Your Windows copy of the script still has the old logic. Run this one-liner in Git Bash to fix it in place:


cd ~/Downloads/ecommerce-platform/ecommerce-platform
sed -i \
  -e 's|cygpath -w|cygpath -m|' \
  -e '/ROOT_GROOVY="\${ROOT_WIN\/\//d' \
  -e 's|ROOT_WIN="\$(cygpath -m "\$ROOT")"|ROOT_GROOVY="$(cygpath -m "$ROOT")"|' \
  -e 's|ROOT_WIN="\$ROOT"|ROOT_GROOVY="$ROOT"|' \
  -e 's|say "Project path (WORKDIR): \$ROOT_WIN"|say "Project path (WORKDIR): $ROOT_GROOVY"|' \
  scripts/setup-jenkins-job.sh
That's fiddly. Simpler and reliable — just verify what the WORKDIR will become, then re-run. Actually, the cleanest path: skip the sed and confirm the value directly:


cygpath -m ~/Downloads/ecommerce-platform/ecommerce-platform
# should print:  C:/Users/abc/Downloads/ecommerce-platform/ecommerce-platform
Fastest way to unblock right now
The job already exists in Jenkins — you don't even need the script to fix it. Just correct the one line in the job:

Jenkins → ecommerce-deploy → Configure
In the Pipeline → Script box, find line 33:

WORKDIR = "C:\Users\abc\Downloads\ecommerce-platform\ecommerce-platform"
Change the backslashes to forward slashes:

WORKDIR = "C:/Users/abc/Downloads/ecommerce-platform/ecommerce-platform"
Save → Build Now.
That alone gets you past the compile error. The script is fixed on my side too (for the next rebuild/zip), but the manual one-line edit above is the quickest unblock.

Run the build and tell me the first stage that goes red — I expect Build or Cluster may hit the LocalSystem PATH/Docker issue next, and I've got the fix ready.

