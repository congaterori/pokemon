@echo off
cls
:start
set /a num=%random% %%199 +1
set /A cong=2 * 10 / 5 + 2 * 20 * %num% / 50 + 2
if %cong% LSS 0 goto start
echo %cong%
pause
goto start