@echo off

set "currDir=%~dp0"
set "siteName=Default Web Site"

::remove spaces in folder name (not needed) as iis cannot have space in dir name
For %%# in (.) do (
    SET "var=%%~n#"
    Call Set "MyVar=%%var: =%%"
    call set "url=/%%MyVar%%"
)


%windir%\system32\inetsrv\AppCmd add app /site.name:"%siteName%" /path:%url% /physicalPath:%currDir%

::echo AppCmd add app /site.name:"%siteName%" /path:%url% /physicalPath:%currDir%
