@echo off
title Bastion TextMine
mode con COLS=50 LINES=25
set usrdir=%cd%\%usr%
set PASSWORD=echo
set ADMIN=FALSE
:START
cls
echo ================
echo  TextMine Beta
echo ================
echo  1. New Game
echo  2. Load Game
echo  3. Quit Game
echo  4. ADMIN MODE
echo ================
echo.
echo ::%MESSAGE%
choice /c 1234 /n >nul
if %ERRORLEVEL%==1 call :VARS
if %ERRORLEVEL%==2 call :LOAD
if %ERRORLEVEL%==3 "%cd%\logon.bat"
if %ERRORLEVEL%==4 goto ADMIN
goto TOWN
:VARS
set PN=0
set PNg=50
set MN=0
set MNg=450
set SM=0
set SMg=1500
set GOLD=0
set DAY=0
set MESSAGE=New Game.
goto:eof
:: BUY / TOWN / SELL
:MENU
cls
echo ===============
echo  TextMine Beta
echo ===============
echo  1. Continue
echo  2. Save Game
echo  3. Load Game
echo  4. ADMIN MODE
echo  5. Quit Game
echo ===============
choice /c 12345 /n >nul
if %ERRORLEVEL%==2 call :SAVE
if %ERRORLEVEL%==3 call :LOAD
if %ERRORLEVEL%==4 goto ADMIN
if %ERRORLEVEL%==5 "%cd%\logon.bat"
goto TOWN 
:ADMIN
if ADMIN==FALSE (
set MESSAGE=Admin mode not enabled.
goto:eof
)
cls
echo ================
echo      ADMIN
echo ================
echo  1. SET MONEY
echo  2. SET PANNER
echo  3. SET MINER
echo  4. SET SMELTER
echo  5. Back
echo ================
choice /c 12345 /n >nul
cls
echo ==================
echo     Set value
echo ==================
if %ERRORLEVEL%==1 set /p GOLD=::
if %ERRORLEVEL%==2 set /p PN=::
if %ERRORLEVEL%==3 set /p MN=::
if %ERRORLEVEL%==4 set /p SM=::
if %ERRORLEVEL%==5 goto MENU
goto ADMIN
) else goto MENU
:LOAD
if exist "%cd%\%usr%\Save.bat" (
call "%usrdir%\Save.bat"
set MESSAGE=Game Loaded.
) else (set MESSAGE=No save game.)
goto:eof
:SAVE
(
echo set MN=%MN%
echo set PN=%PN%
echo set SM=%SM%
echo set MNg=%MNg%
echo set PNg=%PNg%
echo set SMg=%SMg%
echo set GOLD=%GOLD%
echo set ADMIN=%ADMIN%
echo set DAY=%DAY%
) > "%usrdir%\Save.bat"
set MESSAGE=Game Saved.
goto:eof
:TOWN
set /a GPD=2+(%PN%)+(%MN%*5)+(%SM%*25)
              cls
              echo    ------------------
              echo      $%GOLD%
              echo    ------------------
              echo.
              echo ========================
              echo 4         Mine        6 
              echo ========================
              echo.
if %PN% GTR 0 echo    Panner  x%PN%
              echo.
if %MN% GTR 0 echo    Miner   x%MN%
              echo.
if %SM% GTR 0 echo    Smelter x%SM%
              echo.
              echo ========================
              echo 8         Menu        8
              echo ========================
              echo ---     Playing      ---
              echo.
              echo ::%MESSAGE%
              choice /d p /t 2 /c 468p /n >nul
              set MESSAGE= 
              if %ERRORLEVEL%==1 goto BUY
              if %ERRORLEVEL%==2 goto SELL
              if %ERRORLEVEL%==3 goto MENU
              set /a GOLD+=%GPD%
              if %ERRORLEVEL%==4 (
               set MESSAGE=Time lapsed; +$%GPD%
              ) else MESSAGE= 
              goto TOWN
:BUY
set /a aPNg=%PNg%+(%PN%*15)
set /a aMNg=%MNg%+(%MN%*35)
set /a aSMg=%SMg%+(%SM%*75)
              cls
              echo    ------------------
              echo      $%GOLD%
              echo    ------------------
              echo.
              echo ========================
              echo 4        Buy          6
              echo ========================
              echo.
              echo  1.Panner  x%PN%    $%aPNg%
              echo.
              echo  2.Miner   x%MN%    $%aMNg%
              echo.
              echo  3.Smelter x%SM%    $%aSMg%
              echo.
              echo ========================
              echo 8         Menu        8
              echo ========================
              echo ---      Paused      ---
              echo.
              echo ::%MESSAGE%
              choice /c 468123 /n >nul
              set MESSAGE= 
              if %ERRORLEVEL%==1 goto SELL
              if %ERRORLEVEL%==2 goto TOWN
              if %ERRORLEVEL%==3 goto MENU
              if %ERRORLEVEL%==4 (
               set ITEM=PN
               set PRICE=%aPNg%
              )
              if %ERRORLEVEL%==5 (
               set ITEM=MN
               set PRICE=%aMNg%
              )
              if %ERRORLEVEL%==6 (
               set ITEM=SM
               set PRICE=%aSMg%
              )
              if %ERRORLEVEL% GTR 3 call :PURCHASE
              goto BUY
:PURCHASE
if %PRICE% GTR %GOLD% goto:eof
set /a %ITEM%+=1
set /a GOLD-=%PRICE%
set MESSAGE=Purchased.
goto:eof
:SELL
              cls
              echo    ------------------
              echo      $%GOLD%
              echo    ------------------
              echo.
              echo ========================
              echo 4       Sell          6
              echo ========================
              echo.
if %PN% GTR 0 echo  1.Panner  x%PN%    $%PNg%
              echo.
if %MN% GTR 0 echo  2.Miner   x%MN%    $%MNg%
              echo.
if %SM% GTR 0 echo  3.Smelter x%SM%    $%SMg%
              echo.
              echo ========================
              echo 2         Menu        2
              echo ========================
              echo ---      Paused      ---
              echo.
              echo ::%MESSAGE%
              choice /c 468123 /n >nul
              set MESSAGE= 
              if %ERRORLEVEL%==1 goto TOWN
              if %ERRORLEVEL%==2 goto BUY
              if %ERRORLEVEL%==3 goto MENU
              if %ERRORLEVEL%==4 (
               set ITEM=PN
               set PRICE=%PNg%
              )
              if %ERRORLEVEL%==5 (
               set ITEM=MN
               set PRICE=%MNg%
              )
              if %ERRORLEVEL%==6 (
               set ITEM=SM
               set PRICE=%SMg%
              )
              if %ERRORLEVEL% GTR 3 call :SALE
              goto SELL
:SALE
if %ITEM%==0 goto:eof
set /a GOLD+=%PRICE%
set /a %ITEM%-=1
set MESSAGE=Sold.
goto:eof