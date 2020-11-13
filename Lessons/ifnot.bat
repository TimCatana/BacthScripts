@echo off
title If Not Command
:a
set /p protection= Enter password:
if %protection%==Hi goto correct
if not %protection%==Hi goto incorrect
:correct
cls
echo Correct pass!
pause
exit
:incorrect
cls
echo Incorrect pass!
goto :a


