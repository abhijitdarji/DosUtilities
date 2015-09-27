set "buildAllDir=C:\Somedir"
set "currDir=%~dp0"

g:
cd %buildAllDir%
sqlplus username/password@dbname @%currDir%\run.sql %currDir%