abc@DESKTOP-VAMK1SM MINGW64 ~/Downloads/ecommerce-platform/ecommerce-platform/scripts (master)
$ sc query Jenkins

SERVICE_NAME: Jenkins
        TYPE               : 10  WIN32_OWN_PROCESS
        STATE              : 4  RUNNING
                                (STOPPABLE, NOT_PAUSABLE, ACCEPTS_SHUTDOWN)
        WIN32_EXIT_CODE    : 0  (0x0)
        SERVICE_EXIT_CODE  : 0  (0x0)
        CHECKPOINT         : 0x0
        WAIT_HINT          : 0x0

abc@DESKTOP-VAMK1SM MINGW64 ~/Downloads/ecommerce-platform/ecommerce-platform/scripts (master)
$  echo "--- java ---"; ls "/c/Program Files/Eclipse Adoptium/"/*/bin/java.exe 2>&1
--- java ---
'/c/Program Files/Eclipse Adoptium//jdk-25.0.3.9-hotspot/bin/java.exe'*

abc@DESKTOP-VAMK1SM MINGW64 ~/Downloads/ecommerce-platform/ecommerce-platform/scripts (master)
$  echo "--- jenkins.xml executable line ---"; grep -i executable "/c/Program Files/Jenkins/jenkins.xml" 2>&1
--- jenkins.xml executable line ---
  <executable>C:\Program Files\Java\jdk-21.0.12\\bin\java.exe</executable>

abc@DESKTOP-VAMK1SM MINGW64 ~/Downloads/ecommerce-platform/ecommerce-platform/scripts (master)
$
