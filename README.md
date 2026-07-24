16:39:51  #8 56.37 npm notice This endpoint is being retired. Use the bulk advisory endpoint instead. See the following docs for more info: https://api-docs.npmjs.com/#tag/Audit
16:39:51  #8 56.52 
16:39:51  #8 56.52 added 87 packages in 55s
16:39:51  #8 56.52 
16:39:51  #8 56.52 16 packages are looking for funding
16:39:51  #8 56.52   run `npm fund` for details
16:39:51  #8 56.57 npm notice
16:39:51  #8 56.57 npm notice New major version of npm available! 10.8.2 -> 12.0.1
16:39:51  #8 56.57 npm notice Changelog: https://github.com/npm/cli/releases/tag/v12.0.1
16:39:51  #8 56.57 npm notice To update run: npm install -g npm@12.0.1
16:39:51  #8 56.57 npm notice
16:39:51  #8 DONE 58.9s
16:39:51  
16:39:51  #9 [stage-1 3/5] COPY --from=deps /app/node_modules ./node_modules
16:39:51  #9 CACHED
16:39:51  
16:39:51  #10 [stage-1 4/5] COPY src ./src
16:39:51  #10 CACHED
16:39:51  
16:39:51  #11 [stage-1 5/5] COPY package.json ./
16:39:51  #11 DONE 0.8s
16:39:51  
16:39:51  #12 exporting to image
16:39:51  #12 exporting layers
16:39:53  #12 exporting layers 2.4s done
16:39:53  #12 writing image sha256:1d7c51b1f12f906fda2af7ec74e778fe73d54cfac0a8131ccd20a30cce39b5bd 0.0s done
16:39:53  #12 naming to docker.io/ecommerce/cart:local 0.1s done
16:39:53  #12 DONE 2.5s
16:39:54  
16:39:54  What's Next?
16:39:54    View a summary of image vulnerabilities and recommendations → docker scout quickview
16:39:54  --- building order ---
16:40:00  #0 building with "default" instance using docker driver
16:40:00  
16:40:00  #1 [internal] load build definition from Dockerfile
16:40:00  #1 transferring dockerfile:
16:40:00  #1 transferring dockerfile: 451B 0.0s done
16:40:00  #1 DONE 0.3s
16:40:01  
16:40:01  #2 [internal] load metadata for docker.io/library/node:20-alpine
16:40:01  #2 DONE 1.1s
16:40:01  
16:40:01  #3 [internal] load .dockerignore
16:40:02  #3 transferring context:
16:40:02  #3 transferring context: 2B 0.0s done
16:40:02  #3 DONE 0.9s
16:40:02  
16:40:02  #4 [deps 1/4] FROM docker.io/library/node:20-alpine@sha256:fb4cd12c85ee03686f6af5362a0b0d56d50c58a04632e6c0fb8363f609372293
16:40:02  #4 DONE 0.0s
16:40:02  
16:40:02  #5 [internal] load build context
16:40:02  #5 transferring context: 2.79kB 0.1s done
16:40:02  #5 DONE 0.5s
16:40:02  
16:40:02  #6 [deps 2/4] WORKDIR /app
16:40:02  #6 CACHED
16:40:02  
16:40:02  #7 [deps 3/4] COPY package.json ./
16:40:05  #7 DONE 2.4s
16:40:05  
16:40:05  #8 [deps 4/4] RUN npm install --omit=dev
16:41:27  #8 77.43 
16:41:27  #8 77.43 added 87 packages, and audited 88 packages in 1m
16:41:27  #8 77.43 
16:41:27  #8 77.43 16 packages are looking for funding
16:41:27  #8 77.43   run `npm fund` for details
16:41:27  #8 77.44 
16:41:27  #8 77.44 found 0 vulnerabilities
16:41:27  #8 77.44 npm notice
16:41:27  #8 77.44 npm notice New major version of npm available! 10.8.2 -> 12.0.1
16:41:27  #8 77.44 npm notice Changelog: https://github.com/npm/cli/releases/tag/v12.0.1
16:41:27  #8 77.44 npm notice To update run: npm install -g npm@12.0.1
16:41:27  #8 77.44 npm notice
16:41:27  #8 DONE 77.7s
16:41:27  
16:41:27  #9 [stage-1 3/5] COPY --from=deps /app/node_modules ./node_modules
16:41:27  #9 CACHED
16:41:27  
16:41:27  #10 [stage-1 4/5] COPY src ./src
16:41:27  #10 CACHED
16:41:27  
16:41:27  #11 [stage-1 5/5] COPY package.json ./
16:41:27  #11 DONE 0.2s
16:41:27  
16:41:27  #12 exporting to image
16:41:27  #12 exporting layers 0.1s done
16:41:27  #12 writing image sha256:ea9475afb84160fe4e2f460d0d01a0a9e88d4e33b440cd6b8ebc6dcf203b1107 0.0s done
16:41:27  #12 naming to docker.io/ecommerce/order:local 0.0s done
16:41:27  #12 DONE 0.1s
16:41:27  
16:41:27  What's Next?
16:41:27    View a summary of image vulnerabilities and recommendations → docker scout quickview
16:41:27  --- building payment ---
16:41:27  #0 building with "default" instance using docker driver
16:41:27  
16:41:27  #1 [internal] load build definition from Dockerfile
16:41:27  #1 transferring dockerfile: 451B 0.0s done
16:41:27  #1 DONE 0.1s
16:41:27  
16:41:27  #2 [internal] load metadata for docker.io/library/node:20-alpine
16:41:28  #2 DONE 1.3s
16:41:28  
16:41:28  #3 [internal] load .dockerignore
16:41:28  #3 transferring context: 2B done
16:41:28  #3 DONE 0.1s
16:41:28  
16:41:28  #4 [deps 1/4] FROM docker.io/library/node:20-alpine@sha256:fb4cd12c85ee03686f6af5362a0b0d56d50c58a04632e6c0fb8363f609372293
16:41:28  #4 DONE 0.0s
16:41:28  
16:41:28  #5 [internal] load build context
16:41:29  #5 transferring context: 2.61kB 0.2s done
16:41:29  #5 DONE 0.3s
16:41:29  
16:41:29  #6 [deps 2/4] WORKDIR /app
16:41:29  #6 CACHED
16:41:29  
16:41:29  #7 [deps 3/4] COPY package.json ./
16:41:29  #7 DONE 0.1s
16:41:29  
16:41:29  #8 [deps 4/4] RUN npm install --omit=dev
16:41:55  #8 25.00 
16:41:55  #8 25.00 added 87 packages, and audited 88 packages in 24s
16:41:55  #8 25.00 
16:41:55  #8 25.00 16 packages are looking for funding
16:41:55  #8 25.00   run `npm fund` for details
16:41:55  #8 25.01 
16:41:55  #8 25.01 found 0 vulnerabilities
16:41:55  #8 25.02 npm notice
16:41:55  #8 25.02 npm notice New major version of npm available! 10.8.2 -> 12.0.1
16:41:55  #8 25.02 npm notice Changelog: https://github.com/npm/cli/releases/tag/v12.0.1
16:41:55  #8 25.02 npm notice To update run: npm install -g npm@12.0.1
16:41:55  #8 25.02 npm notice
16:41:55  #8 DONE 25.2s
16:41:55  
16:41:55  #9 [stage-1 3/5] COPY --from=deps /app/node_modules ./node_modules
16:41:55  #9 CACHED
16:41:55  
16:41:55  #10 [stage-1 4/5] COPY src ./src
16:41:55  #10 CACHED
16:41:55  
16:41:55  #11 [stage-1 5/5] COPY package.json ./
16:41:55  #11 DONE 0.1s
16:41:55  
16:41:55  #12 exporting to image
16:41:55  #12 exporting layers 0.1s done
16:41:55  #12 writing image sha256:e082c6a5d1bc13d2a4a22dccca3da072de2ffba1003fa485f41bfda6023adb40 0.0s done
16:41:55  #12 naming to docker.io/ecommerce/payment:local 0.0s done
16:41:55  #12 DONE 0.2s
16:41:55  
16:41:55  What's Next?
16:41:55    View a summary of image vulnerabilities and recommendations → docker scout quickview
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Scan)
[Pipeline] bat
16:41:56  
16:41:56  C:\ProgramData\Jenkins\.jenkins\workspace\ecommerce-deploy>"C:\Program Files\Git\bin\bash.exe" -lc "export PATH=\"$HOME/.ecommerce-tools/bin:$PATH\"; cd 'C:/Users/abc/Downloads/ecommerce-platform/ecommerce-platform' && bash scripts/ci-pipeline.sh scan" 
16:41:58  
16:41:58  [1;36m==> Scan images (Trivy, non-blocking)[0m
16:41:58  trivy not installed — skipping
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Cluster)
[Pipeline] bat
16:41:58  
16:41:58  C:\ProgramData\Jenkins\.jenkins\workspace\ecommerce-deploy>"C:\Program Files\Git\bin\bash.exe" -lc "export PATH=\"$HOME/.ecommerce-tools/bin:$PATH\"; cd 'C:/Users/abc/Downloads/ecommerce-platform/ecommerce-platform' && bash scripts/ci-pipeline.sh cluster" 
16:41:59  
16:41:59  [1;36m==> Ensure kind cluster 'ecommerce-ci'[0m
16:41:59  scripts/ci-pipeline.sh: line 77: kind: command not found
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
16:42:02  
16:42:02  C:\ProgramData\Jenkins\.jenkins\workspace\ecommerce-deploy>taskkill /F /IM kubectl.exe   2>NUL  || exit 0 
[Pipeline] echo
16:42:02  Pipeline failed — rolling back the Helm release.
[Pipeline] bat
16:42:03  
16:42:03  C:\ProgramData\Jenkins\.jenkins\workspace\ecommerce-deploy>"C:\Program Files\Git\bin\bash.exe" -lc "export PATH=\"$HOME/.ecommerce-tools/bin:$PATH\"; cd 'C:/Users/abc/Downloads/ecommerce-platform/ecommerce-platform' && bash scripts/ci-pipeline.sh rollback" 
16:42:05  
16:42:05  [1;36m==> Rolling back the Helm release[0m
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
