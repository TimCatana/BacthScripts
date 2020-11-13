@echo off
:main
echo Press 1 to make me say Hi
echo Press 2 to make me say Bye
echo Press 3 to exit
set /p input=
if %input% == 1 goto hi
if %input% == 2 goto bye
if %input% == 3 goto ext
:hi
echo Hi
pause
goto :main
:bye
echo Bye
pause
goto :main
:ext
exit