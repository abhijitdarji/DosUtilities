type nul > filenames.txt
for /F "tokens=4" %%A in (FILE NAME TO READ) do echo %%A >> filenames.txt