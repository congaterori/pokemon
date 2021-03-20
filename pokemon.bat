@echo off
title pokemon
cls
chcp 65001
:start
cls
color a
type logo.txt
echo.
timeout 2 > nul
if exist name.txt goto setname
goto new
:setname
setlocal DisableDelayedExpansion
for /f "Delims=" %%a in (name.txt) do set name=%%a
echo Welcome back %name%
timeout 1 > nul
if exist poke.txt goto setpoke
goto pokemon
:new
cls
echo Welcome to pokemon
echo what is your name?
set /p name=
if %name% == "" goto new
echo %name% > name.txt
echo hello %name%
pause
goto pokemon
:setpoke
cls
setlocal DisableDelayedExpansion
for /f "Delims=" %%a in (poke.txt) do set poke=%%a
if exist money.txt goto setmoney
goto money
:money
cls
set money=20
echo %money% > money.txt
::ATTRIB +R money.txt
if exist ball.txt goto setball
goto ball
:setmoney
cls
setlocal DisableDelayedExpansion
for /f "Delims=" %%a in (money.txt) do set money=%%a
if exist ball.txt goto setball
goto ball
:ball
set ball=5
echo 5 > ball.txt
goto hp
:setball
cls
setlocal DisableDelayedExpansion
for /f "Delims=" %%a in (ball.txt) do set ball=%%a
goto hp
:hp
cls
setlocal DisableDelayedExpansion
for /f "Delims=" %%a in (hp.txt) do set hp=%%a
if %hp% LSS 0 set /A hp=0
if %hp% == 0 set /A hp=%hp%+50
goto level
:level
cls
setlocal DisableDelayedExpansion
for /f "Delims=" %%a in (lv.txt) do set level=%%a
if exist exp.txt goto setexp
goto exp
:exp
cls
set /A exp=0
echo %exp% > exp.txt
goto 
:setexp
cls
setlocal DisableDelayedExpansion
for /f "Delims=" %%a in (exp.txt) do set exp=%%a
goto menu
:pokemon
cls
echo.
type poke\Bulbasaur.txt
echo.
type poke\Charmander.txt
echo.
type poke\Pikachu.txt
echo.
type poke\Squirtle.txt
echo.
echo ╔═══════════════════╗
echo ║Choose your pokemon║
echo ╚═══════════════════╝
cmdmenusel f971 "Bulbasaur" "Charmander" "Pikachu" "Squirtle"
if %ERRORLEVEL% == 1 goto bulbasaur
if %ERRORLEVEL% == 2 goto charmander
if %ERRORLEVEL% == 3 goto pikachu
if %ERRORLEVEL% == 4 goto squirtle
:bulbasaur
set poke=1
set hp=45
set level=5
echo %poke% > poke.txt
echo %hp% > hp.txt
echo %level% > lv.txt
echo ╔════════════════════════╗
echo ║you choosed bulbasaur!  ║
echo ║now start your adventure║
echo ╚════════════════════════╝
pause
cls
echo try to catch new pokemon
pause
goto menu
:charmander
set poke=2
set hp=39
set /A level=5
echo %hp% > hp.txt
echo %level% > lv.txt
echo %poke% > poke.txt
echo ╔════════════════════════╗
echo ║you choosed charmander! ║
echo ║now start your adventure║
echo ╚════════════════════════╝
pause
cls
echo try to catch new pokemon
goto menu
:pikachu
set /A poke=3
set /A hp=35
set /A level=5
echo %hp% > hp.txt
echo %level% > lv.txt
echo %poke% > poke.txt
echo ╔════════════════════════╗
echo ║you choosed pikachu!    ║
echo ║now start your adventure║
echo ╚════════════════════════╝
pause
cls
echo try to catch new pokemon
goto menu
:squirtle
set /A poke=4
set /A hp=44
set /A level=5
echo %hp% > hp.txt
echo %level% > lv.txt
echo %poke% > poke.txt
echo ╔════════════════════════╗
echo ║you choosed squirtle!   ║
echo ║now start your adventure║
echo ╚════════════════════════╝
pause
cls
echo try to catch new pokemon
goto menu
:menu
cls
color a
if %poke% == 1 set namepoke=Bulbasaur
if %poke% == 2 set namepoke=Charmander
if %poke% == 3 set namepoke=Pikachu
if %poke% == 4 set namepoke=Squirtle
if %poke% == 5 set namepoke=Golem
if %poke% == 6 set namepoke=Caterpie
echo money:%money%
echo pokeball:%ball%
type house_pokemon.txt
cmdmenusel f971 "open map" "restart game"
if %ERRORLEVEL% == 1 goto map
if %ERRORLEVEL% == 2 goto start
:map
color 0f
if %hp% LSS 0 set /A hp=0
if %hp% == 0 set /A hp=%hp%+50
goto InitSetup
:InitSetup
set Xcoord=3
set Ycoord=3
:DisplaySetup
cls
set X1Y1=  
set X1Y2=  
set X1Y3=  
set X1Y4=  
set X1Y5=  
set X2Y1=  
set X2Y2=  
set X2Y3=  
set X2Y4=  
set X2Y5=  
set X3Y1=  
set X3Y2=  
set X3Y3=  
set X3Y4=  
set X3Y5=  
set X4Y1=  
set X4Y2=  
set X4Y3=  
set X4Y4=  
set X4Y5=  
set X5Y1=  
set X5Y2=  
set X5Y3=  
set X5Y4=  
set X5Y5=  
:Display
::??
SET /A r=%RANDOM% * 5 / 32768 + 1
set X%Xcoord%Y%Ycoord%=[]
echo M to exit
echo.
echo.
echo.
echo.
echo ,______________.
echo ^|%X1Y5%^|%X2Y5%^|%X3Y5%^|%X4Y5%^|%X5Y5%^|
echo ^|--^|--^|--^|--^|--^|
echo ^|%X1Y4%^|%X2Y4%^|%X3Y4%^|%X4Y4%^|%X5Y4%^|
echo ^|--^|--^|--^|--^|--^|
echo ^|%X1Y3%^|%X2Y3%^|%X3Y3%^|%X4Y3%^|%X5Y3%^|
echo ^|--^|--^|--^|--^|--^|
echo ^|%X1Y2%^|%X2Y2%^|%X3Y2%^|%X4Y2%^|%X5Y2%^|
echo ^|--^|--^|--^|--^|--^|
echo ^|%X1Y1%^|%X2Y1%^|%X3Y1%^|%X4Y1%^|%X5Y1%^|
echo `______________'
if %r% == 5 goto have
::choice /c wsadm /n
::set direction=%ERRORLEVEL%
::goto direction%direction%
getinput
if %ERRORLEVEL% == 294 goto direction1
if %ERRORLEVEL% == 296 goto direction2
if %ERRORLEVEL% == 293 goto direction3
if %ERRORLEVEL% == 295 goto direction4
if %ERRORLEVEL% == 109 goto direction5
goto DisplaySetup
:direction1
set /A Ycoord=%Ycoord%+1
if %Ycoord% GTR 5 (
	set /A Ycoord=%Ycoord%-1
	goto DisplaySetup
) ELSE (
	goto DisplaySetup
)
:direction2
set /A Ycoord=%Ycoord%-1
if %Ycoord% LSS 1 (
	set /A Ycoord=%Ycoord%+1
	goto DisplaySetup
) ELSE (

	goto DisplaySetup
)
:direction3
set /A Xcoord=%Xcoord%-1
if %Xcoord% LSS 1 (
	set /A Xcoord=%Xcoord%+1
	goto DisplaySetup
) ELSE (
	goto DisplaySetup
)
:direction4
set /A Xcoord=%Xcoord%+1
if %Xcoord% GTR 5 (
	set /A Xcoord=%Xcoord%-1
	goto DisplaySetup
) ELSE (
	goto DisplaySetup
)
:direction5
cls
goto menu
:have
set /A music=%RANDOM% * 3 / 32768 + 1
if %music% == 1 start Music_Battle_gym.vbs & set /A randommusic=1
if %music% == 2 start Music_Battle_Trainer.vbs & set /A randommusic=2
if %music% == 3 start Music_Battle_Wild.vbs & set /A randommusic=3
echo.
echo ╔═══════════════════╗
echo ║ you see a pokemon ║
echo ╚═══════════════════╝
timeout 1 > nul
cls
::set /A music=%RANDOM% * 3 / 32768 + 1
::if %music% == 1 start Music_Battle_gym.vbs & set /A randommusic=1
::if %music% == 2 start Music_Battle_Trainer.vbs & set /A randommusic=2
::if %music% == 3 start Music_Battle_Wild.vbs & set /A randommusic=3
cmdmenusel f971 "attack" "run"
if %ERRORLEVEL% == 1 start click.vbs & goto attack
if %ERRORLEVEL% == 2 start click.vbs & timeout 1 > nul & Taskkill  /F /IM wscript.exe > nul & goto map
:attack
cls
SET /A battlerandom=%RANDOM% * 5 / 32768 + 1
set Bulbasaur=1
set Charmander=2
set Pikachu=3
set Squirtle=4
set Golem=5
set Caterpie=6
set /A turn=1
if %poke% == %battlerandom% goto attack
::if %poke% == %Bulbasaur% or if %poke% == %Charmander% or if %poke% == %Pikachu% or if %poke% == %Squirtle% or if %poke% == %Golem% or if %poke% == %Caterpie% goto attack
if %battlerandom% == 1 set /A hpattack=45 & set /A levelattack=5 & set namepokeattack=Bulbasaur & set skill1attack=Solar_Beam & set skill2attack=Protect & set skill3attack=Outrage
if %battlerandom% == 2 set /A hpattack=39 & set /A levelattack=5 & set namepokeattack=Charmander & set skill1attack=Fire_Spin & set skill2attack=Flamethrower & set skill3attack=Outrage
if %battlerandom% == 3 set /A hpattack=35 & set /A levelattack=5 & set namepokeattack=Pikachu & set skill1attack=Thunder & set skill2attack=10,000,000_Volt_Thunderbolt & set skill3attack=Iron_Tail
if %battlerandom% == 4 set /A hpattack=44 & set /A levelattack=5 & set namepokeattack=Squirtle & set skill1attack=ice_punch & set skill2attack=Water_Gun & set skill3attack=Ice_Beam
if %battlerandom% == 5 set /A hpattack=80 & set /A levelattack=5 & set namepokeattack=Golem & set skill1attack=rock_throw & set skill2attack=Superpower & set skill3attack=Mega_Punch
if %battlerandom% == 6 set /A hpattack=45 & set /A levelattack=5 & set namepokeattack=Caterpie & set skill1attack=elec_thunder & set skill2attack=bug_bite & set skill3attack=Tackle
goto attacking
:attacking
cls
echo hp:%hp% lv:%level% poke:%poke% exp:%exp%
echo battlerandom:%battlerandom%
if %hp% == 0 goto lose
if %hp% LSS 0 goto lose
if %hpattack% == 0 goto win
if %hpattack% LSS 0 goto win
if %poke% == 1 set skill1=Solar_Beam & set skill2=Protect &  set skill3=Outrage
if %poke% == 2 set skill1=Fire_Spin & set skill2=Flamethrower & set skill3=Outrage
if %poke% == 3 set skill1=Thunder & set skill2=10,000,000_Volt_Thunderbolt & set skill3=Iron_Tail
if %poke% == 4 set skill1=ice_punch & set skill2=Water_Gun & set skill3=Ice_Beam
if %poke% == 5 set skill1=Rock_Throw & set skill2=Superpower & set skill3=Mega_Punch
if %poke% == 6 set skill1=elec_thunder & set skill2=bug_bite & set skill3=Tackle
if %battlerandom% == 1 type poke\Bulbasaur.txt
if %battlerandom% == 2 type poke\Charmander.txt
if %battlerandom% == 3 type poke\Pikachu.txt
if %battlerandom% == 4 type poke\Squirtle.txt
if %battlerandom% == 5 type poke\Golem.txt
if %battlerandom% == 6 type poke\Caterpie.txt
SET /A num=%RANDOM% * 25 / 32768 + 1
set /A damge=2 * %level% / 5 + 2 * %hp% / 2 * %num% / 50 + 2
SET /A numattack=%RANDOM% * 20 / 32768 + 1
set /A damgeattack=2 * %levelattack% / 5 + 2 * %hpattack% / 2 * %numattack% / 50 + 2
echo.
echo  ____________________________________________________________
echo / Lv.%levelattack%   %namepokeattack%   HP:%hpattack%       /
echo `----------------------------------------------------------'
echo.
echo  __________________________________________
echo / Lv.%level%   %namepoke%   HP:%hp%       /
echo `----------------------------------------'
if %turn% == 1 goto turnme
if %turn% == 2 goto turnyour
:turnme
cmdmenusel f971 "%skill1%" "%skill2%" "%skill3%" "run"
if %ERRORLEVEL% == 1 start click.vbs & goto use1
if %ERRORLEVEL% == 2 start click.vbs & goto use2
if %ERRORLEVEL% == 3 start click.vbs & goto use3
if %ERRORLEVEL% == 4 Taskkill  /F /IM wscript.exe  > nul & start click.vbs & goto map
:turnyour
set /A randomskill=%RANDOM% * 3 / 32768 + 1
if %randomskill% == 1 goto use1attack
if %randomskill% == 2 goto use2attack
if %randomskill% == 3 goto use3attack
:use1
cls
set /A turn=2
set /A hpattack=%hpattack% - %damge%
if %poke% == 1 type skill\solar_beam.txt & start Solar_Beam.vbs
if %poke% == 2 type skill\fire_spin.txt & start Fire_Spin.vbs
if %poke% == 3 type skill\thunder.txt & start Thunder.vbs
if %poke% == 4 type skill\ice_punch.txt & start Ice_Punch.vbs
if %poke% == 5 type skill\Rock_Throw.txt & start Rock_Throw.vbs
if %poke% == 6 type skill\elec_Thunder.txt & start elec_thunder.vbs
echo.
echo ╔════════════════════════════════════════╗
echo ║%namepoke%   use   %skill1%!            ║
echo ╚════════════════════════════════════════╝
timeout 3 > nul
cls
echo ╔════════════════════════════════════════╗
echo ║%namepokeattack% loses %damge% hp!            ║
echo ╚════════════════════════════════════════╝
pause
goto attacking
:use2
cls
set /A turn=2
set /A hpattack=%hpattack% - %damge%
if %poke% == 2 start Flamethrower.vbs
if %poke% == 3 start 100_volt.vbs
if %poke% == 4 type skill\water_gun.txt & start Water_Gun.vbs
if %poke% == 5 start Superpower.vbs
if %poke% == 6 type skill\bug_bite.txt & start Bug_Bite.vbs
echo.
echo ╔════════════════════════════════════════╗
echo ║%namepoke%   use   %skill2%!            ║
echo ╚════════════════════════════════════════╝
timeout 3 > nul
cls
echo ╔════════════════════════════════════════╗
echo ║%namepokeattack% loses %damge% hp!            ║
echo ╚════════════════════════════════════════╝
pause
goto attacking
:use3
cls
set /A turn=2
set /A hpattack=%hpattack% - %damge%
if %poke% == 1 start Outrage.vbs
if %poke% == 2 start Outrage.vbs
if %poke% == 3 start Iron_Tail.vbs
if %poke% == 4 type skill\ice_beam.txt & start Ice_Beam.vbs
if %poke% == 5 type skill\mega_punch.txt & start Mega_Punch.vbs
if %poke% == 6 start Tackle.vbs
echo.
echo ╔════════════════════════════════════════╗
echo ║%namepoke%   use   %skill3%!            ║
echo ╚════════════════════════════════════════╝
timeout 3 > nul
cls
echo ╔════════════════════════════════════════╗
echo ║%namepokeattack% loses %damge% hp!            ║
echo ╚════════════════════════════════════════╝
pause
goto attacking
:use1attack
cls
set /A turn=1
set /A hp=%hp%-%damgeattack%
if %battlerandom% == 1 type skill\solar_beam.txt & start Solar_Beam.vbs
if %battlerandom% == 2 type skill\fire_spin.txt & start Fire_Spin.vbs
if %battlerandom% == 3 type skill\thunder.txt & start Thunder.vbs
if %battlerandom% == 4 type skill\ice_punch.txt & start Ice_Punch.vbs
if %battlerandom% == 5 type skill\Rock_Throw.txt & start Rock_Throw.vbs
if %battlerandom% == 6 type skill\elec_Thunder.txt & start elec_thunder.vbs
echo.
echo ╔════════════════════════════════════════════════════╗
echo ║%namepokeattack%   use   %skill1attack%!            ║
echo ╚════════════════════════════════════════════════════╝
timeout 3 > nul
cls
echo ╔══════════════════════════════════════════════╗
echo ║You loses %damgeattack% hp!                   ║
echo ╚══════════════════════════════════════════════╝
pause
goto attacking
:use2attack
cls
set /A turn=1
set /A hp=%hp% - %damgeattack%
if %battlerandom% == 2 start Flamethrower.vbs
if %battlerandom% == 3 start 100_volt.vbs
if %battlerandom% == 4 type skill\water_gun.txt & start Water_Gun.vbs
if %battlerandom% == 5 start Superpower.vbs
if %battlerandom% == 6 type skill\bug_bite.txt & start Bug_Bite.vbs
echo.
echo ╔════════════════════════════════════════════════════╗
echo ║%namepokeattack%   use   %skill2attack%!            ║
echo ╚════════════════════════════════════════════════════╝
timeout 3 > nul
cls
echo ╔══════════════════════════════════════════════╗
echo ║You  loses %damgeattack% hp!                  ║
echo ╚══════════════════════════════════════════════╝
pause
goto attacking
:use3attack
cls
set /A turn=1
set /A hp=%hp% - %damgeattack%
if %battlerandom% == 1 start Outrage.vbs
if %battlerandom% == 2 start Outrage.vbs
if %battlerandom% == 3 start Iron_Tail.vbs
if %battlerandom% == 4 type skill\ice_beam.txt & start Ice_Beam.vbs
if %battlerandom% == 5 type skill\mega_punch.txt & start Mega_Punch.vbs
if %% == 6 start Tackle.vbs
echo.
echo ╔════════════════════════════════════════════════════╗
echo ║%namepokeattack%   use   %skill3attack%!            ║
echo ╚════════════════════════════════════════════════════╝
timeout 3 > nul
cls
echo ╔══════════════════════════════════════════════╗
echo ║You loses %damgeattack% hp!                   ║
echo ╚══════════════════════════════════════════════╝
pause
goto attacking
:lose
Taskkill  /F /IM wscript.exe  > nul
cls
echo your hp down to 0
echo ╔═══════════════════╗
echo ║you lose!          ║
echo ╚═══════════════════╝
pause
goto map
:win
Taskkill  /F /IM wscript.exe > nul
if %randommusic% == 1 start Music_Victory_Gym.vbs
if %randommusic% == 2 start Music_Victory_Trainer.vbs
if %randommusic% == 3 start Music_Victory_Wild.vbs
cls
echo ╔═══════════════════╗
echo ║you won            ║
echo ╚═══════════════════╝
pause
set /A exp=%exp%+2
echo %exp% > exp.txt
set /A hp=%hp%+5
echo %hp% > hp.txt
Taskkill  /F /IM wscript.exe > nul
goto map
