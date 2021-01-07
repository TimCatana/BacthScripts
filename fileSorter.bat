@echo off
rem only moves common formats

:LOOP
set /p director= Enter the directory you wish to sort or enter "exit" (all lower case) to terminate the program:

rem check for exit
if "%director%"=="exit" goto :END 

rem check to see if inputted directory is valid
if exist %director% ( echo beginning sorting process ) ELSE ( cls && echo Invalid Directory - please try again && goto :LOOP )

rem create folders inside given directory if they don't exist already
if not exist %director%\Photos (mkdir %director%\Photos)
if not exist %director%\Videos (mkdir %director%\Videos)
if not exist %director%\Documents (mkdir %director%\Documents)
if not exist %director%\Music (mkdir %director%\Music)

rem sort documents
move %director%\*.docx %director%\Documents
move %director%\*.pdf %director%\Documents
move %director%\*.xls %director%\Documents
move %director%\*.txt %director%\Documents

rem sort music
move %director%\*.mp3 %director%\Music
move %director%\*.wav %director%\Music

rem sort pictures
move %director%\*.jpg %director%\Photos
move %director%\*.jpeg %director%\Photos
move %director%\*.tif %director%\Photos
move %director%\*.png %director%\Photos
move %director%\*.raw %director%\Photos
move %director%\*.gif %director%\Photos
move %director%\*.bmp %director%\Photos

rem sort videos
move %director%\*.mp4 %director%\Videos
move %director%\*.wmv %director%\Videos
move %director%\*.avi %director%\Videos
move %director%\*.mkv %director%\Videos
move %director%\*.mov %director%\Videos
move %director%\*.mts %director%\Videos

echo Done!
goto :LOOP

rem end of script
:END
exit
