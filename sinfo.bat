@echo off
cls

echo ============================
echo      SYSTEM INFO DISPLAY
echo ============================
echo.

echo OS Information:
systeminfo | findstr /B /C:"OS" /C:"Build"
echo.

echo Memory Information:
systeminfo | findstr /B /C:"Total Physical Memory" /C:"Available Physical Memory"
echo.

echo Processor Info:
wmic cpu get caption, deviceid, name, numberofcores
echo.

echo IP Address:
ipconfig | findstr /C:"IPv4"
echo.

echo Disk Space Information:
wmic logicaldisk get size,freespace,caption
echo.

echo ============================
echo      END OF SYSTEM INFO
echo ============================
pause
