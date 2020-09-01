@echo off
@title BFPMS is Running
cls
color 0f
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
SET /A r=%RANDOM% * 6 / 32768 + 1
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
if %r% == 1 goto have
getinput
::choice /c wsadm /n
:set direction=%ERRORLEVEL%
:goto direction%direction%
if %ERRORLEVEL% == 294 goto direction1
if %ERRORLEVEL% == 296 goto direction2
if %ERRORLEVEL% == 293 goto direction3
if %ERRORLEVEL% == 295 goto direction4
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
exit
:have
echo.
echo ษออออออออออออออออป
echo บ you see a poke บ
echo ศออออออออออออออออผ
pause > nul
cls
goto DisplaySetup