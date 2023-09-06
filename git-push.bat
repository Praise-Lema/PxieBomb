@echo off

::git pull https://github.com/Praise-Lema/PxieBomb.git

set str=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%

git ini 
REM Check if changes pushed succeeded and log 
if %errorlevel%==0 (
cd ../Logs/Success
echo LOG ENTRY >>%str%.txt
echo. >>%str%.txt
echo MESSAGE: Backup Changes Pushed Succesfully >>%str%.txt
echo DATE: %date% >>%str%.txt
echo TIME: %TIME% >>%str%.txt
echo. >>%str%.txt
)

REM Check if changes pushed failed and log
if %errorlevel%==1 (
cd ../Logs/Failed
echo LOG ENTRY >>%str%.txt
echo. >>%str%.txt
echo MESSAGE: Failed to Push Backup changes To Remote Repository >>%str%.txt
echo DATE: %date% >>%str%.txt
echo TIME: %TIME% >>%str%.txt
echo. >>%str%.txt
)
pause