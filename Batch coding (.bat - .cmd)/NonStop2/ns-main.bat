@echo off
title Non-Stop CMD (Non-Lethal)
echo Welcome to Non-Stop CMD Non-Lethal, meaning that the spammer will quit after some time.
echo This application will spam your system with Command Prompt windows, until it aborts (after 15sec).
echo This is done by packaging anti non-stop from the original Non-Stop into the main script with a timer.
set /p conf=Do you want to continue? [Y/N] 
if %conf% == y goto spam
if %conf% == n exit

:spam
start spammer.bat
ping 127.0.0.1 -n 16 > nul
start kill.bat
start kill.bat
echo Started recovery process...
pause
goto thx

:thx
echo Thanks for trying out!
echo Application will now quit to Command Prompt
pause
cls
title Command Prompt
cmd