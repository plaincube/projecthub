@echo off
title TextMine
cls

:init
echo --CHECKING IF FILES EXISTS--
if exist "%cd%\server.txt" (
    echo Server info file exists!
)

if exist "%cd%\help.txt" (
    echo Help file found!
)

if exist "%cd%\grind.bat" (
    echo Grinder executable found!
)

if exist "%cd%\sword.bat" (
    echo Sword Shop executable found!
)

if exist "%cd%\pick.bat" (
    echo Pickaxe Shop executable found!
)

echo --SETTING SERVER INFO--
set /p server=<%cd%\server.txt
echo You are connected to %server%...

pause

textmine.bat