::RemovePrefix.bat
setlocal

set "curdir= DIR PATH WITHOUT LAST \ "
set "pre=xyz."

for %%A in ("%curdir%\*.*") do (
  set "fname=%%~A"
  call ren "%%fname%%" "%%fname:*%pre%=%%"
)