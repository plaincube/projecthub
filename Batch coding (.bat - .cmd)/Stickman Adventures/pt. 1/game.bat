@echo off
:home
title Stickman Adventures pt. 1
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
if %input% == 1 goto lvl1
if %input% == 2 goto lvlsel
if %input% == 3 notepad must read.txt
if %input% == 4 exit
if %input% == 5 cd.. && launcher.bat

:lvlsel
cls
echo Select a level by entering the level number (1 or 2), then hit ENTER.
echo Select 0 to go to the main menu. 
set /p input=
if %input% == 1 goto lvl1
if %input% == 2 goto lvl2
if %input% == 0 goto home

:lvl1
title LEVEL 1: Welcome to Stick Land
@echo off
cls
echo LEVEL 1: Welcome to Stick Land
pause
goto lvl1text

:lvl1text
title LEVEL 1: Welcome to Stick Land
cls
echo RIIING!
echo RIIING!
echo The doorbell rang.
echo Sticky: Wait, I'm coming!
echo Who could that be? He wondered.
echo Sticky: Hello, Jacob! What brings you here today?
echo Jacob: We need to solve a mystery, at Stick Land!
echo Sticky: Stick Land?!! That's a 10 day flight from here, are you crazy?
echo Jacob: The king wants us to solve the mystery and he is willing to give us rewards! He has also provided us airplane tickets!
echo Sticky: Did I hear the word "rewards"?!!
echo Jacob: You did.
echo Sticky: What are you waiting for? Let's go!!!
echo.
echo The game begins
pause
goto lvl1game

:lvl1game
title LEVEL 1: Welcome to Stick Land
cls
echo Sticky and Jacob took a taxi to the Airport.
echo Along the way, they had to make a decision.
echo They had to go through the dangerous path (shorter) or the safer path (longer). They suddenly realised that they were almost late. Their flight would departure in half an hour. They need YOUR help to decide.
echo Choose the path that they should go through to reach the Airport.
echo 1)Shorter
echo 2)Longer
echo Select one option (1 or 2) and hit ENTER to continue.
set /p input=
if %input% == 1 cls && echo A tree fell on the taxi and Sticky, Jacob as well as the taxi driver got sent to the hospital. && pause && goto lvl1
if %input% == 2 goto lvl1correct

:lvl2
title LEVEL 2: The Airport
cls
echo LEVEL 2: The Airport
pause goto lvl2text

:lvl2text
title LEVEL 2: The Airport
cls
echo Sticky: We're at the Airport!
echo Jacob: Where's our flight, Sticky?
echo Sticky: According to the tickets, it's at the West Wing of the Airport! I think the entrance to the West Wing is over there beside the restrooms.
echo Jacob: It sure is, there is a sign above the door that says: "West Wing Entrance"!
echo Once they reached the entrance, the Airport Security Guard told them that they could not go there as there was an Exterminator there. There were cockroaches EVERYWHERE!
echo There were people on board, so Sticky and Jacob had to find a way to get on the plane.
echo They found a map and found 3 paths that they could take to reach the plane.
echo.
echo Choose the path that they should go through to reach the plane.
echo 1)Through office
echo 2)Through vent room
echo 3)Through airplane runway
echo Select one option (1 or 2) and hit ENTER to continue.
set /p input=
if %input% == 2 cls && echo They fainted due to the thick smoke from the vents. && pause && goto lvl2
if %input% == 1 goto lvl2correct
if %input% == 3 cls && echo Their legs got run over by an airplane and they became wheelchair bound. && pause && goto lvl2

:lvl1correct
title WELL DONE!
cls
echo WELL DONE! You answered the question correctly! We should avoid risks at all costs.
pause
goto lvl2

:lvl2correct
title WELL DONE
cls
echo WELL DONE! You answered the question correctly! We should avoid risks at all costs.
echo.
echo.
echo.
echo TO BE CONTINUED IN: Stickman Adventures pt. 2.
pause
goto home