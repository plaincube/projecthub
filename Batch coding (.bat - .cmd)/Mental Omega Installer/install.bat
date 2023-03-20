@echo off
title Mental Omega
echo +==Mental Omega==+
echo This program will install Mental Omega on your computer.
echo If you have not patched YR and RA2 to v1.001 and v1.006 respectively,
echo Please exit and do so before retrying.
pause
cls

title MO Install - Downloading Files
echo +================+
echo -==Mental Omega==-
echo -==Installation==-
echo +================+
set /p yrdir=Yuri's Revenge directory (without quotes): 
set /p modir=Mental Omega directory (without quotes, install folder): 
wget https://www.moddb.com/downloads/mirror/115776/130/ebf97ac5a6634402408a53d7ce7a795d -O "%modir%\dltemp\MentalOmega330Mod.zip"
wget https://www.moddb.com/downloads/mirror/222694/128/3b78fe7c3b657cb7967aaf66e44972eb -O "%modir%\dltemp\MentalOmega336Patch.zip"
wget https://www.moddb.com/downloads/mirror/115815/130/4b524902b73181cf1b35215c6fdbcb5c -O "%modir%\dltemp\MentalOmega330Soundtrack.zip"
wget https://www.moddb.com/downloads/mirror/204779/130/7916706235536515eacb70b8ddd1513a -O "%modir%\dltemp\MentalOmega330SoundtrackPart2.zip"
echo Download complete!
pause
cls

title MO Install - Copying Files
echo +================+
echo -==Mental Omega==-
echo -==Installation==-
echo +================+
cd "%yrdir%"
copy BINKW32.dll "%modir%\BINKW32.dll"
copy BLOWFISH.dll "%modir%\BLOWFISH.dll"
copy gamemd.exe "%modir%\gamemd.exe"
copy ra2.mix "%modir%\ra2.mix"
copy ra2md.mix "%modir%\ra2md.mix"
copy language.mix "%modir%\language.mix"
copy langmd.mix "%modir%\langmd.mix"
robocopy 7z "%modir%\dltemp"
echo Copying complete!

title MO Install - Extracting Files
echo +================+
echo -==Mental Omega==-
echo -==Installation==-
echo +================+
cd "%modir%\dltemp"
"%modir%\dltemp\7za" e -y -aoa MentalOmega330Mod.zip -o"%modir%"
"%modir%\dltemp\7za" e -y -aoa MentalOmega336Patch.zip -o"%modir%"
"%modir%\dltemp\7za" e -y -aoa MentalOmega330Soundtrack.zip -o"%modir%"
"%modir%\dltemp\7za" e -y -aoa MentalOmega330SoundtrackPart2.zip -o"%modir%"
echo Extraction complete!

title MO Install - Performing Cleanup
echo +================+
echo -==Mental Omega==-
echo -==Installation==-
echo +================+
cd..
set /p cleanyn=Would you like to delete the downloaded leftover files? [Y/N]
if %cleanyn% == y rmdir dltemp
if %cleanyn% == n explorer "%modir%\dltemp"
echo Done installing!
pause
exit
