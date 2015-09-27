type nul > master.sql

:Test

set "curDir=C:\somedir"

for /f "tokens=*" %%a in ('dir /b /on "%curDir%\*.*"') do (
	echo prompt running %curDir%\%%~a
	echo @@%curDir%\%%~a ) >> master.sql