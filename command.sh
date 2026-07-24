The Jenkinsfile.windows is fixed on my side. Update the job — since the API push may 500, the reliable route is the UI. Configure → Script box, and change two things:

1. The environment block (near the top) — replace it with:


  environment {
    WORKDIR  = "C:/Users/abc/Downloads/ecommerce-platform/ecommerce-platform"
    USERHOME = "C:/Users/abc"
    BASH     = "C:\\Program Files\\Git\\bin\\bash.exe"
    CLUSTER  = "ecommerce-ci"
  }
2. The bashStage function at the very bottom — replace it with:


def bashStage(String stage) {
  bat """
    "%BASH%" -lc "export HOME='%USERHOME%'; export KUBECONFIG=\\"\$HOME/.kube/config\\"; export PATH=\\"\$HOME/.ecommerce-tools/bin:\$PATH\\"; cd '%WORKDIR%' && bash scripts/ci-pipeline.sh ${stage}"
  """
}
Save → Build Now.

