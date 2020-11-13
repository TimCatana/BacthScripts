@echo off
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp.vbs"
set text=Hello, this is a talking batch file.
echo speech.speak "%text%" >> "temp.vbs"
start temp.vbs
pausedel temp.vbs