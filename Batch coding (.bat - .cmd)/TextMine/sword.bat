@echo off
cls
:sword
title Sword Shop
echo Type "mine" to go back.
set /p swordans=
if %swordans% == mine TextMine.bat
pause