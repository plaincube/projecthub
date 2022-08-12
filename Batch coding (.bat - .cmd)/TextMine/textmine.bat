@echo off
title TextMine
cls

:mine
cls
echo Type "mine" to start mining.
echo Type "help" to show all available commands.
set /p ans=
if %ans% == help goto help
if %ans% == vpnsrv goto server
if %ans% == leave exit
if %ans% == mine grind.bat
if %ans% == pick pick.bat
if %ans% == sword sword.bat

:help
cls
type help.txt
pause
goto mine

:server
cls
echo You are connected to %server%!
pause
goto mine

:error
cls
echo Error!
echo You are not supposed to be able to reach this point!
echo Redirectig to mine!
pause
goto mine