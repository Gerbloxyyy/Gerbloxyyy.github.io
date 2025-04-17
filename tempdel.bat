@echo off
cls
echo ============================
echo   PC MAINTENANCE SCRIPT
echo ============================
echo.

:: Step 1: Delete temporary files
echo Deleting temporary files...
del /q /f /s %TEMP%\* > nul
del /q /f /s C:\Windows\Temp\* > nul
del /q /f /s C:\Users\%USERNAME%\AppData\Local\Temp\* > nul
echo Temporary files deleted.
echo.

:: Step 2: Clear the Recycle Bin
echo Emptying the Recycle Bin...
rd /s /q C:\$Recycle.Bin
echo Recycle Bin emptied.
echo.

:: Step 3: Clean Windows Update Files (Optional)
echo Cleaning up Windows Update files...
echo This may take some time.
cleanmgr /sagerun:1
echo Windows Update cleanup complete.
echo.

:: Step 4: Run Disk Cleanup tool
echo Running disk cleanup...
cleanmgr /sagerun:1
echo Disk cleanup complete.
echo.

:: Step 5: Check and repair system files
echo Checking for system file integrity...
sfc /scannow
echo System file check complete.
echo.

:: Step 6: Optimize drives (Optional)
echo Optimizing drives...
defrag C: /O
echo Drive optimization complete.
echo.

:: Step 7: Display system information
echo Displaying system information...
systeminfo | findstr /B /C:"OS" /C:"Build"
systeminfo | findstr /B /C:"Total Physical Memory" /C:"Available Physical Memory"
echo.

:: Final message
echo ============================
echo   MAINTENANCE COMPLETE
echo ============================
pause
