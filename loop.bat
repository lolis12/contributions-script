@echo off

set /p UserInput=Enter a number: 
set /a NumberLoop=UserInput

if [%NumberLoop% != ?(-)+([0-9])] pause

set loopcount=%NumberLoop%
:loop
echo %random% > file.txt
git add .

git commit -m %random%

git push

set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop
goto loop
:exitloop
pause