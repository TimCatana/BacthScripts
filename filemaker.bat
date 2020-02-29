@echo off
title file maker

:a
set /p name=Enter the name of your file:
set /p extension=Enter the exension for your file (ex txt, html):
echo. > %name%.%extension%

:write
set /p write=do you want to write something to the file? (y or n):
if %write%==y goto :y
if %write%==n goto :n
goto :write

:y
set /p input=What do you want to write to the file?:
echo %input% > %name%.%extension%
goto :again

:n
goto :again

:again
set /p again=Do you want to make anther file? (y or n):
if %again%==y goto :a
if %again%==n exit
goto :again

