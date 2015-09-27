
set curdir=%~dp0
set tempfile=%curdir%stat.txt
set tfsSolnPath=$/XYZProject/Main/
set dateFrom=05/01/2014
set dateTo=06/24/2015

:get all files list for date range
cd C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE
tf history "%tfsSolnPath%" -r -f:detailed /noprompt -v:D"%dateFrom%"~D"%dateTo%" > "%tempfile%"
cd %curdir%
:if you want to copy files
:mkdir here

:get proper file names to copy
type nul > filenames.txt
for /F "delims=$ tokens=1,*" %%a in (stat.txt) do (
	if NOT !%%b!==!! (
		:write in file only if not already added to get unique values
		find /i "%%~pnxb" filenames.txt 
		if errorlevel 1 (
		    echo %%~pnxb >>filenames.txt
		)
	)
)
	
:delete temporary file
del stat.txt