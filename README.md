Started by user Dipjoy

[Pipeline] Start of Pipeline
[Pipeline] node
Running on Jenkins
 in C:\ProgramData\Jenkins\.jenkins\workspace\ecommerce-deploy
[Pipeline] {

[Pipeline] withEnv
[Pipeline] {
[Pipeline] timestamps
[Pipeline] {
[Pipeline] timeout
16:28:03  Timeout set to expire in 30 min
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Test)
[Pipeline] bat

16:28:05  
16:28:05  C:\ProgramData\Jenkins\.jenkins\workspace\ecommerce-deploy>"C:\Program Files\Git\bin\bash.exe" -lc "export PATH=\"$HOME/.ecommerce-tools/bin:$PATH\"; cd 'C:/Users/abc/Downloads/ecommerce-platform/ecommerce-platform' && bash scripts/ci-pipeline.sh test" 

16:28:07  
16:28:07  [1;36m==> Unit test + syntax check[0m
16:28:07  --- frontend ---

16:28:19  npm warn deprecated node-domexception@1.0.0: Use your platform's native DOMException instead

16:28:22  
16:28:22  added 93 packages in 12s

16:28:23  --- catalog ---

16:28:32  
16:28:32  added 87 packages in 6s

16:28:32  
16:28:32  > catalog@0.1.0 test
16:28:32  > node --test src/*.test.js
16:28:32  
16:28:32  Could not find 'C:\Users\abc\Downloads\ecommerce-platform\ecommerce-platform\services\catalog\src\*.test.js'
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Build)
Stage "Build" skipped due to earlier failure(s)
[Pipeline] getContext

[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Scan)
Stage "Scan" skipped due to earlier failure(s)
[Pipeline] getContext
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Cluster)
Stage "Cluster" skipped due to earlier failure(s)
[Pipeline] getContext
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
16:28:36  
16:28:36  C:\ProgramData\Jenkins\.jenkins\workspace\ecommerce-deploy>taskkill /F /IM kubectl.exe   2>NUL  || exit 0 

[Pipeline] echo
16:28:37  Pipeline failed — rolling back the Helm release.
[Pipeline] bat
16:28:37  
16:28:37  C:\ProgramData\Jenkins\.jenkins\workspace\ecommerce-deploy>"C:\Program Files\Git\bin\bash.exe" -lc "export PATH=\"$HOME/.ecommerce-tools/bin:$PATH\"; cd 'C:/Users/abc/Downloads/ecommerce-platform/ecommerce-platform' && bash scripts/ci-pipeline.sh rollback" 

16:28:39  
16:28:39  [1;36m==> Rolling back the Helm release[0m
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

ERROR: script returned exit code 1
Finished: FAILURE
