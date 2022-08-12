@echo off
:start
title Premium Key Verification
cls
if exist "%cd%\dnd_log_data_save_inf_auth.txt" (
    echo Premium Key found. && pause && goto start2
) else (
    echo Premium Key not found. && pause && cd.. && launcher.bat
)

:start2 
title Premium Key Validator
cls
find "ID=19374573" "%cd%\dnd_log_data_save_inf_auth.txt" && (
  cls && echo Premium Key is valid. && pause && goto home
) || (
  echo Premium Key is invalid. && pause && cd.. && launcher.bat
)

:home
title Stickman Adventures pt. 2
cls
echo Stickman Adventures
echo ... with Sticky and Jacob!
echo.
echo 1)Play
echo 2)Level Select
echo 3)Help
echo 4)Quit
echo 5)Launcher
echo.
echo Select one option (1, 2 or 3) and hit ENTER to continue.
set /p input=
if %input% == 1 goto lvl3
if %input% == 2 goto lvlsel
if %input% == 3 notepad must read.txt
if %input% == 4 exit
if %input% == 5 cd.. && launcher.bat

:lvlsel
cls
echo Select a level by entering the level number (3 to 5), then hit ENTER.
echo Select 0 to go to the main menu. 
set /p input=
if %input% == 3 goto lvl3
if %input% == 4 goto lvl4
if %input% == 5 goto lvl5
if %input% == 0 goto home

:lvl3
title LEVEL 3: The Flight
cls
echo LEVEL 3: The Flight
pause
goto lvl3txt

:lvl3txt
title LEVEL 3: The Flight
cls
echo Sticky: Isn't this great, Jacob? We have food, drinks, toilets (restrooms), movies and  air-conditioner!
echo Jacob: It sure is! I wish I had brought my whole collection of soft toys to enjoy this with me!
echo Sticky: I realised that your favourite phrase is "It sure is!". You said it at the airport, now you said it again!
echo Jacob: Did I?
echo Sticky: Maybe you did, maybe you didn't.
echo Jacob: Are you sure about that?
echo Sticky: I sure am!
pause
goto lvl3game

:lvl3game
title LEVEL 3: The Flight
cls
echo Sticky and Jacob realised that the toilet was broken and the stones used to flush fell out of the plane.
echo What should they do?
echo.
echo 1)Try to fix themselves
echo 2)Do nothing
echo 3)Inform the Flight Attendant
set /p input=
if %input% == 3 goto lvl3correct
if %input% == 1 cls && echo They fell out of the plane while trying to fix it. Fortunately, they landed in a pool. && pause && goto lvl3
if %input% == 2 cls && echo The toilet let out a horrible stench and the plane smelt like the sewer. && pause && goto lvl3

:lvl3correct
title WELL DONE
cls
echo WELL DONE! You solved the question correctly!
pause
goto lvl4

:lvl 4
title LEVEL 4: The King's Visit
echo LEVEL 4: The King's Visit
pause
goto lvl4txt

:lvl4txt
title LEVEL 4: The King's Visit
cls
echo Sticky: We're finally here! We're at the King's palace.
echo Jacob: We sure are!
echo Sticky: "We sure are" sure sounds like "it sure is"!
echo Jacob: Does it?
echo Sticky: It does!
echo Jacob: Anyway, how do we get into the palace? There's a maze in front of the palace!
echo Sticky: The..
echo Jacob: I'm great at mazes! I'm sure that we can get us through the maze.
echo Sticky: I was about to say: There surely is a map!
echo Jacob: Who cares about maps?
echo Sticky: I do!
echo Jacob: Let's get onto getting through this maze!
echo Sticky: How 'bout we have a competition? First to get through the maze wins!
echo Jacob: It's on!
pause