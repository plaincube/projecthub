@echo off
cls
:sword
cls
title Grinder
echo Type "back" to go back.
echo Type "mine" to start mining.
set /p grindans=
if %grindans% == back TextMine.bat
if %grindans% == mine goto grind

:grind
cls
set /p picktype=<pick.txt
if %picktype% == wood goto wood
if %picktype% == iron goto iron
if %picktype% == stone goto stone
if %picktype% == diamond goto diamond

:wood
cls
SET /A RAND=%RANDOM%%%100+1
echo %rand% stone
echo %rand%>stone.txt
pause
goto sword