:write in file only if not already added to get unique values
:errorlevel 0 is found and 1 is not found
find /i "%%~pnxb" filenames.txt 
if errorlevel 1 (
	 echo %%~pnxb >>filenames.txt
)