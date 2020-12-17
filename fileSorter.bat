@echo off
rem only moves common formats

:LOOP
set /p director= Enter the directory you wish to sort or enter "exit" (all lower case) to terminate the program:

:: check for exit
if "%director%"=="exit" goto :END 

if exist %director% ( echo beginning sorting process ) ELSE ( cls && echo Invalid Directory - please try again && goto :LOOP )

:: create folders inside given directory if they don't exist already
if not exist %director%\Photos (mkdir %director%\Photos)
if not exist %director%\Videos (mkdir %director%\Videos)
if not exist %director%\Documents (mkdir %director%\Documents)
if not exist %director%\Music (mkdir %director%\Music)

:: sort documents
move *.docx %director%\Documents
move *.pdf %director%\Documents
move *.xls %director%\Documents
move *.txt %director%\Documents

:: sort music
move *.mp3 %director%\Music
move *.wav %director%\Music

:: sort pictures
move *.jpg %director%\Photos
move *.jpeg %director%\Photos
move *.tif %director%\Photos
move *.png %director%\Photos
move *.raw %director%\Photos
move *.gif %director%\Photos
move *.bmp %director%\Photos

:: sort videos
move *.mp4 %director%\Videos
move *.wmv %director%\Videos
move *.avi %director%\Videos
move *.mkv %director%\Videos
move *.mov %director%\Videos

echo Done!
goto :LOOP

:: end of script
:END
exit
