type nul > master.txt

set "curDir=%~dp0"

for /f "tokens=*" %%a in ('dir /b /on "%curDir%"') do (
	echo %%~a ) >> master.txt

pause&exit