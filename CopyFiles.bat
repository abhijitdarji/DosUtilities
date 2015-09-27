:Comments

set "copydir= DIR_PATH without last\ "
set  "curDir=%~dp0"

for /f "tokens=*" %%a in (TEXT FILE NAME) do (
  xcopy /s "%curDir%"epzb.%%a "%copydir%"
)