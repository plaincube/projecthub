@echo off
:home
cls
title Login
echo Login to your TextMine VPN account!
echo 1. Register
echo 2. Login
echo 3. Public account
set /p opt=
if %opt% == 1 goto create
if %opt% == 2 goto check
if %opt% == 3 goto public

:check
cls
set /p usr=Username: 
if exist "%cd%\%usr%\textmine.bat" goto password
goto home

:password
cls
set /p passwd=Password: 
findstr /m %passwd% "%cd%\%usr%\passwd.txt" >nul
if %errorlevel%==0 (
goto launch
) else (
goto home
)

:public
set usr=public
goto launch

:launch
cls
"%cd%\%usr%\textmine.bat"

:create
cls
echo User creation
set /p uname=Username: 
set /p pwd=Password: 
md %uname%
echo %pwd% >"%cd%\%uname%\passwd.txt"
copy "%cd%\files\*.*" "%cd%\%uname%\"
goto home