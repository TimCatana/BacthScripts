@echo off
title file maker
:a
set /p name=Enter the name of your file:
set /p extension=Enter the exension for your file (ex txt, html):
echo. > %name%.%extension%
:write
set /p write=do you want to write something to the file? (yes or no):
if %write%==yes goto :yes
if %write%==no goto :no
goto :write
:yes
set /p input=What do you want to write to the file?:
echo %input% > %name%.%extension%
goto :again
:no
echo ok
goto :again
:again
set /p again=Do you want to make another file? (yes or no):
if %again%==yes goto :a
if %again%==no exit
goto :again

