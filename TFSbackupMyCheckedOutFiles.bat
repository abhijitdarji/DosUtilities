
set curdir=%~dp0
set tempfile=%curdir%stat.txt

:get all checkout files list
cd C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE
tf status > "%tempfile%"
cd %curdir%
mkdir here

:get proper file names to copy
type nul > filenames.txt
for /F "tokens=4" %%A in (stat.txt) do echo %%A >> filenames.txt

:delete temporary file
del stat.txt

:copy files to new dir
set "copydir="%curdir%"here"

for /f "tokens=*" %%a in (filenames.txt) do (
  xcopy /y /s %%a %copydir%
)