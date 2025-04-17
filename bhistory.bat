@echo off
echo Clearing Google Chrome history...
del /q /f "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\History"
echo Google Chrome history cleared!
pause
