@echo OFF

REM robocopy.exe C:\wamp64\www\textengine\sitechats\media\apgovstuff\uploaded C:\wamp64\www\textengine\sitechats\media\apgovstuff\uploaded\git /COPYALL /E

net session>NUL
if %errorlevel% == 0 ( goto okbypass ) else ( 
echo Run this file as administrator and try again.
pause
exit
 )
 

 
:okbypass
"C:\wamp64\www\textengine\sitechats\media\apgovstuff\uploaded\autoconvert.py"

robocopy C:\wamp64\www\textengine\sitechats\media\apgovstuff\uploaded C:\wamp64\www\textengine\sitechats\media\apgovstuff\uploaded\git /COPYALL /E
rmdir C:\wamp64\www\textengine\sitechats\media\apgovstuff\uploaded\git\git /S /Q
cd C:\wamp64\www\textengine\sitechats\media\apgovstuff\uploaded\git
git add *
git commit -a -S -m "auto commit by update utility at %time% on %date%"
git push