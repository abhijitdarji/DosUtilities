:this is to replace a specific line (here 2)
:call jrepl "^APPBASE=.*" "APPBASE=CHANGED" /jbegln "skip=(ln!=2)" /f "Test.txt" /o -

call jrepl "^APPBASE=.*" "APPBASE=CHANGED"  /f "Test.txt" /o -