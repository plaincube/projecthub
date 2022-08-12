@echo off
cls
:sword
title Pickaxe Shop
echo Type "mine" to go back.
set /p pickans=
if %pickans% == mine TextMine.bat