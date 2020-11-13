@echo off
rem only moves common formats

set /p director= Enter the directory you wish to sort?: 
cd %director%

mkdir Photos
mkdir Videos
mkdir Documents
mkdir Music

rem documents
move *.docx Documents
move *.pdf Documents
move *.xls Documents
move *.txt Documents

rem music
move *.mp3 Music
move *.wav Music

rem pictures
move *.jpg Photos
move *.jprg Photos
move *.tif Photos
move *.png Photos
move *.raw Photos
move *.gif Photos
move *.bmp Photos

rem videos
move *.mp4 Photos
move *.wmv Photos
move *.avi Photos
move *.mkv Photos

echo Done!
pause
exit
