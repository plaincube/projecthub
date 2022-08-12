@echo off
title Stickman Adventures Launcher
cls
echo Stickman Adventures Launcher
echo.
echo To load pt. 1, enter in "1" and hit ENTER
echo To load pt. 2, enter in "2" and hit ENTER
echo To quit, enter in "0" and hit ENTER
set /p input=
if %input% == 1 cd pt. 1 && game.bat
if %input% == 2 cd pt. 2 && game.bat
if %input% == 0 exit