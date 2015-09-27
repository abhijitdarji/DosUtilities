:Comments

set "copydir= DIR_PATH without last\ "
set  "curDir=%~dp0"

robocopy "%curDir%" "%copydir%" /create /e