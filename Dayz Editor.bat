@echo off

taskkill -f -im CrashReporter.exe
taskkill /F /IM DayZ_x64.exe /T

:: start client with right mods to debug 
set gameDirectory="C:\Program Files (x86)\Steam\steamapps\common\DayZ\"
cd "%gameDirectory%"

:: client exe name 
set clientEXE="DayZ_x64.exe"

set workshopDir=!Workshop

:: IDs ou nomes dos mods separados por ponto e vírgula
set modlist=^
%workshopDir%\@CF;^
%workshopDir%\@Dabs Framework;^
%workshopDir%\@Deadfall;^
%workshopDir%\@DayZ-Editor;^
%workshopDir%\@Code Lock;^
%workshopDir%\@ExodusModPack-cars;^
%workshopDir%\@ExodusModPack-LastSurvivor;^
%workshopDir%\@BoomLay's Things;^
%workshopDir%\@Paragon Arsenal;^
%workshopDir%\@Paragon Gear and Armor;^
%workshopDir%\@Paragon Storage;^
%workshopDir%\@Fungi Neon Signs;^
%workshopDir%\@SFP;^
%workshopDir%\@SFP_anim_system;^
%workshopDir%\@CROFT BookBR;^
%workshopDir%\@CROFT MiniContainersBR;^
%workshopDir%\@RedFalcon Flight System Heliz;^
%workshopDir%\@GDZ-AnimalHeads;^
%workshopDir%\@Crocodile;^
%workshopDir%\@DayZ-Dog;^
%workshopDir%\@ExtraFarmingItems;^
%workshopDir%\@RaG_BeeHive;^
%workshopDir%\@Ambient Animals Pack;^
%workshopDir%\@DayZ Mining System with Ores and Gems;^
%workshopDir%\@RaG_BaseItems;^
%workshopDir%\@BuildingsModPack13;^
%workshopDir%\@TakistanPlus;^
%workshopDir%\@TNL Static Assets;^
%workshopDir%\@Tommys Asset Pack;^
%workshopDir%\@TNL Dead Person;^
%workshopDir%\@DNA Keycards;^
%workshopDir%\@Chiemsee


:: Inicializando o DayZ com os mods
echo start "" %clientEXE% "-mod=%modlist%" -dologs -adminlog -freezecheck "-scriptDebug=true"
start "" %clientEXE% "-mod=%modlist%" -dologs -adminlog -freezecheck "-scriptDebug=true"

timeout 5

