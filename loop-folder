@echo off
:: Loop counter (Just to make sure youre not spammign github like an idiot)
SET LoopNumber=0

:: Takes the user Input before validation
set /p UserInput=Enter a number: 
set /a NumberLoop=UserInput

:: Checks if input is valid (A number)
if [%NumberLoop% NEQ ?(-)+([0-9])] pause 

:: Minimize the window
powershell -window minimized -command ""

set loopcount=%NumberLoop%
:loop
SET number=%random%
echo creating file
set /a WaitFor=(%RANDOM%*1800/32768)+1
cd spam
echo.>"%number%.txt"
echo %number% > "%number%.txt"
echo File was successfully created, starting to commit
git add .

git commit -m %number%

git push

SET /a LoopNumber= LoopNumber+1
echo ====== Done! Round %LoopNumber% was successfully made ======

TIMEOUT /T %WaitFor%

:: Set the loopcount number
set /a loopcount=loopcount-1
:: Once loopcount EQ to 0 exit by calling exitloop 
if %loopcount%==0 goto exitloop
goto loop
:exitloop
:: pauses the script and closes the windows
pause
