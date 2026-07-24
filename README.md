Hi
sc query Jenkins
echo "--- java ---"; ls "/c/Program Files/Eclipse Adoptium/"/*/bin/java.exe 2>&1
echo "--- jenkins.xml executable line ---"; grep -i executable "/c/Program Files/Jenkins/jenkins.xml" 2>&1
