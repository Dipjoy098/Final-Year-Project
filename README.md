17:03:19  #4 [deps 1/4] FROM docker.io/library/node:20-alpine@sha256:fb4cd12c85ee03686f6af5362a0b0d56d50c58a04632e6c0fb8363f609372293
17:03:19  #4 DONE 0.0s
17:03:19  
17:03:19  #5 [internal] load build context
17:03:19  #5 transferring context: 90B done
17:03:19  #5 DONE 0.0s
17:03:19  
17:03:19  #6 [deps 2/4] WORKDIR /app
17:03:19  #6 CACHED
17:03:19  
17:03:19  #7 [deps 3/4] COPY package.json ./
17:03:19  #7 CACHED
17:03:19  
17:03:19  #8 [deps 4/4] RUN npm install --omit=dev
17:03:19  #8 CACHED
17:03:19  
17:03:19  #9 [stage-1 3/5] COPY --from=deps /app/node_modules ./node_modules
17:03:19  #9 CACHED
17:03:19  
17:03:19  #10 [stage-1 4/5] COPY src ./src
17:03:19  #10 CACHED
17:03:19  
17:03:19  #11 [stage-1 5/5] COPY package.json ./
17:03:19  #11 CACHED
17:03:19  
17:03:19  #12 exporting to image
17:03:19  #12 exporting layers done
17:03:19  #12 writing image sha256:8edd7c53f25b7775a3f8515999cabc0e7fb80a80fd4a218cdd3f54e882deff90 done
17:03:19  #12 naming to docker.io/ecommerce/frontend:local 0.0s done
17:03:19  #12 DONE 0.0s
17:03:19  
17:03:19  What's Next?
17:03:19    1. Sign in to your Docker account → docker login
17:03:19    2. View a summary of image vulnerabilities and recommendations → docker scout quickview
17:03:19  --- building catalog ---
17:03:21  #0 building with "default" instance using docker driver
17:03:21  
17:03:21  #1 [internal] load build definition from Dockerfile
17:03:21  #1 transferring dockerfile: 451B done
17:03:21  #1 DONE 0.0s
17:03:21  
17:03:21  #2 [internal] load metadata for docker.io/library/node:20-alpine
17:03:21  #2 DONE 0.4s
17:03:21  
17:03:21  #3 [internal] load .dockerignore
17:03:21  #3 transferring context: 2B done
17:03:21  #3 DONE 0.0s
17:03:21  
17:03:21  #4 [deps 1/4] FROM docker.io/library/node:20-alpine@sha256:fb4cd12c85ee03686f6af5362a0b0d56d50c58a04632e6c0fb8363f609372293
17:03:21  #4 DONE 0.0s
17:03:21  
17:03:21  #5 [internal] load build context
17:03:21  #5 transferring context: 126B done
17:03:21  #5 DONE 0.0s
17:03:21  
17:03:21  #6 [deps 4/4] RUN npm install --omit=dev
17:03:21  #6 CACHED
17:03:21  
17:03:21  #7 [stage-1 3/5] COPY --from=deps /app/node_modules ./node_modules
17:03:21  #7 CACHED
17:03:21  
17:03:21  #8 [stage-1 4/5] COPY src ./src
17:03:21  #8 CACHED
17:03:21  
17:03:21  #9 [deps 3/4] COPY package.json ./
17:03:21  #9 CACHED
17:03:21  
17:03:21  #10 [deps 2/4] WORKDIR /app
17:03:21  #10 CACHED
17:03:21  
17:03:21  #11 [stage-1 5/5] COPY package.json ./
17:03:21  #11 CACHED
17:03:21  
17:03:21  #12 exporting to image
17:03:21  #12 exporting layers done
17:03:21  #12 writing image sha256:670bf6e8ab5c1dffc144c1b33d3dd33acacf497792c2f2e6bcd16f3ed3489d41 0.0s done
17:03:21  #12 naming to docker.io/ecommerce/catalog:local done
17:03:21  #12 DONE 0.0s
17:03:21  
17:03:21  What's Next?
17:03:21    1. Sign in to your Docker account → docker login
17:03:21    2. View a summary of image vulnerabilities and recommendations → docker scout quickview
17:03:21  --- building cart ---
17:03:22  #0 building with "default" instance using docker driver
17:03:22  
17:03:22  #1 [internal] load build definition from Dockerfile
17:03:22  #1 transferring dockerfile: 451B done
17:03:22  #1 DONE 0.1s
17:03:22  
17:03:22  #2 [internal] load metadata for docker.io/library/node:20-alpine
17:03:22  #2 DONE 0.4s
17:03:22  
17:03:22  #3 [internal] load .dockerignore
17:03:22  #3 transferring context: 2B 0.0s done
17:03:22  #3 DONE 0.0s
17:03:22  
17:03:22  #4 [deps 1/4] FROM docker.io/library/node:20-alpine@sha256:fb4cd12c85ee03686f6af5362a0b0d56d50c58a04632e6c0fb8363f609372293
17:03:22  #4 DONE 0.0s
17:03:22  
17:03:22  #5 [internal] load build context
17:03:22  #5 transferring context: 89B done
17:03:22  #5 DONE 0.0s
17:03:22  
17:03:22  #6 [stage-1 3/5] COPY --from=deps /app/node_modules ./node_modules
17:03:22  #6 CACHED
17:03:22  
17:03:22  #7 [stage-1 4/5] COPY src ./src
17:03:22  #7 CACHED
17:03:22  
17:03:22  #8 [deps 2/4] WORKDIR /app
17:03:22  #8 CACHED
17:03:22  
17:03:22  #9 [deps 3/4] COPY package.json ./
17:03:22  #9 CACHED
17:03:22  
17:03:22  #10 [deps 4/4] RUN npm install --omit=dev
17:03:22  #10 CACHED
17:03:22  
17:03:22  #11 [stage-1 5/5] COPY package.json ./
17:03:22  #11 CACHED
17:03:23  
17:03:23  #12 exporting to image
17:03:23  #12 exporting layers done
17:03:23  #12 writing image sha256:1d7c51b1f12f906fda2af7ec74e778fe73d54cfac0a8131ccd20a30cce39b5bd done
17:03:23  #12 naming to docker.io/ecommerce/cart:local done
17:03:23  #12 DONE 0.0s
17:03:23  
17:03:23  What's Next?
17:03:23    1. Sign in to your Docker account → docker login
17:03:23    2. View a summary of image vulnerabilities and recommendations → docker scout quickview
17:03:23  --- building order ---
17:03:24  #0 building with "default" instance using docker driver
17:03:24  
17:03:24  #1 [internal] load build definition from Dockerfile
17:03:24  #1 transferring dockerfile: 451B 0.0s done
17:03:24  #1 DONE 0.0s
17:03:24  
17:03:24  #2 [internal] load metadata for docker.io/library/node:20-alpine
17:03:24  #2 DONE 0.4s
17:03:24  
17:03:24  #3 [internal] load .dockerignore
17:03:24  #3 transferring context: 2B done
17:03:24  #3 DONE 0.0s
17:03:24  
17:03:24  #4 [deps 1/4] FROM docker.io/library/node:20-alpine@sha256:fb4cd12c85ee03686f6af5362a0b0d56d50c58a04632e6c0fb8363f609372293
17:03:24  #4 DONE 0.0s
17:03:24  
17:03:24  #5 [internal] load build context
17:03:24  #5 transferring context: 89B done
17:03:24  #5 DONE 0.0s
17:03:24  
17:03:24  #6 [deps 2/4] WORKDIR /app
17:03:24  #6 CACHED
17:03:24  
17:03:24  #7 [stage-1 3/5] COPY --from=deps /app/node_modules ./node_modules
17:03:24  #7 CACHED
17:03:24  
17:03:24  #8 [stage-1 4/5] COPY src ./src
17:03:24  #8 CACHED
17:03:24  
17:03:24  #9 [deps 4/4] RUN npm install --omit=dev
17:03:24  #9 CACHED
17:03:24  
17:03:24  #10 [deps 3/4] COPY package.json ./
17:03:24  #10 CACHED
17:03:24  
17:03:24  #11 [stage-1 5/5] COPY package.json ./
17:03:24  #11 CACHED
17:03:24  
17:03:24  #12 exporting to image
17:03:24  #12 exporting layers done
17:03:24  #12 writing image sha256:ea9475afb84160fe4e2f460d0d01a0a9e88d4e33b440cd6b8ebc6dcf203b1107 done
17:03:24  #12 naming to docker.io/ecommerce/order:local done
17:03:24  #12 DONE 0.0s
17:03:25  
17:03:25  What's Next?
17:03:25    1. Sign in to your Docker account → docker login
17:03:25    2. View a summary of image vulnerabilities and recommendations → docker scout quickview
17:03:25  --- building payment ---
17:03:26  #0 building with "default" instance using docker driver
17:03:26  
17:03:26  #1 [internal] load build definition from Dockerfile
17:03:26  #1 transferring dockerfile: 451B 0.0s done
17:03:26  #1 DONE 0.0s
17:03:26  
17:03:26  #2 [internal] load metadata for docker.io/library/node:20-alpine
17:03:26  #2 DONE 0.4s
17:03:26  
17:03:26  #3 [internal] load .dockerignore
17:03:26  #3 transferring context: 2B 0.0s done
17:03:26  #3 DONE 0.1s
17:03:26  
17:03:26  #4 [deps 1/4] FROM docker.io/library/node:20-alpine@sha256:fb4cd12c85ee03686f6af5362a0b0d56d50c58a04632e6c0fb8363f609372293
17:03:26  #4 DONE 0.0s
17:03:26  
17:03:26  #5 [internal] load build context
17:03:26  #5 transferring context: 89B done
17:03:26  #5 DONE 0.0s
17:03:27  
17:03:27  #6 [deps 2/4] WORKDIR /app
17:03:27  #6 CACHED
17:03:27  
17:03:27  #7 [deps 3/4] COPY package.json ./
17:03:27  #7 CACHED
17:03:27  
17:03:27  #8 [deps 4/4] RUN npm install --omit=dev
17:03:27  #8 CACHED
17:03:27  
17:03:27  #9 [stage-1 3/5] COPY --from=deps /app/node_modules ./node_modules
17:03:27  #9 CACHED
17:03:27  
17:03:27  #10 [stage-1 4/5] COPY src ./src
17:03:27  #10 CACHED
17:03:27  
17:03:27  #11 [stage-1 5/5] COPY package.json ./
17:03:27  #11 CACHED
17:03:27  
17:03:27  #12 exporting to image
17:03:27  #12 exporting layers done
17:03:27  #12 writing image sha256:e082c6a5d1bc13d2a4a22dccca3da072de2ffba1003fa485f41bfda6023adb40 done
17:03:27  #12 naming to docker.io/ecommerce/payment:local done
17:03:27  #12 DONE 0.0s
17:03:27  
17:03:27  What's Next?
17:03:27    1. Sign in to your Docker account → docker login
17:03:27    2. View a summary of image vulnerabilities and recommendations → docker scout quickview
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Scan)
[Pipeline] bat
17:03:27  
17:03:27  C:\ProgramData\Jenkins\.jenkins\workspace\ecommerce-deploy>"C:\Program Files\Git\bin\bash.exe" -lc "export HOME='C:/Users/abc'; export KUBECONFIG=\"$HOME/.kube/config\"; export PATH=\"$HOME/.ecommerce-tools/bin:$PATH\"; cd 'C:/Users/abc/Downloads/ecommerce-platform/ecommerce-platform' && bash scripts/ci-pipeline.sh scan" 
17:03:28  
17:03:28  [1;36m==> Scan images (Trivy, non-blocking)[0m
17:03:28  trivy not installed — skipping
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Cluster)
[Pipeline] bat
17:03:28  
17:03:28  C:\ProgramData\Jenkins\.jenkins\workspace\ecommerce-deploy>"C:\Program Files\Git\bin\bash.exe" -lc "export HOME='C:/Users/abc'; export KUBECONFIG=\"$HOME/.kube/config\"; export PATH=\"$HOME/.ecommerce-tools/bin:$PATH\"; cd 'C:/Users/abc/Downloads/ecommerce-platform/ecommerce-platform' && bash scripts/ci-pipeline.sh cluster" 
17:03:29  
17:03:29  [1;36m==> Ensure kind cluster 'ecommerce-ci'[0m
17:03:29  scripts/ci-pipeline.sh: line 77: kind: command not found
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Load)
Stage "Load" skipped due to earlier failure(s)
[Pipeline] getContext
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Deploy)
Stage "Deploy" skipped due to earlier failure(s)
[Pipeline] getContext
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Verify)
Stage "Verify" skipped due to earlier failure(s)
[Pipeline] getContext
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (HPA)
Stage "HPA" skipped due to earlier failure(s)
[Pipeline] getContext
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Declarative: Post Actions)
[Pipeline] bat
17:03:30  
17:03:30  C:\ProgramData\Jenkins\.jenkins\workspace\ecommerce-deploy>taskkill /F /IM kubectl.exe   2>NUL  || exit 0 
[Pipeline] echo
17:03:30  Pipeline failed — rolling back the Helm release.
[Pipeline] bat
17:03:31  
17:03:31  C:\ProgramData\Jenkins\.jenkins\workspace\ecommerce-deploy>"C:\Program Files\Git\bin\bash.exe" -lc "export HOME='C:/Users/abc'; export KUBECONFIG=\"$HOME/.kube/config\"; export PATH=\"$HOME/.ecommerce-tools/bin:$PATH\"; cd 'C:/Users/abc/Downloads/ecommerce-platform/ecommerce-platform' && bash scripts/ci-pipeline.sh rollback" 
17:03:31  
17:03:31  [1;36m==> Rolling back the Helm release[0m
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // timeout
[Pipeline] }
[Pipeline] // timestamps
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
ERROR: script returned exit code 127
Finished: FAILURE
