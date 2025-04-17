@echo off
chcp 65001 >nul
color 0A
cls

:menu
cls
title GYEL Multi Tool
echo    ▄██████▄  ▄██   ▄      ▄████████  ▄█       
echo   ███    ███ ███   ██▄   ███    ███ ███       
echo   ███    █▀  ███▄▄▄███   ███    █▀  ███       
echo  ▄███        ▀▀▀▀▀▀███  ▄███▄▄▄     ███       
echo ▀▀███ ████▄  ▄██   ███ ▀▀███▀▀▀     ███       
echo   ███    ███ ███   ███   ███    █▄  ███       
echo   ███    ███ ███   ███   ███    ███ ███▌    ▄ 
echo   ████████▀   ▀█████▀    ██████████ █████▄▄██ 
echo.
echo Made by Gerbloxyy
echo.
set /p user=Username: 
echo.
set /p pass=Password: 
echo.

if /i "%user%"=="root" if /i "%pass%"=="root" goto success

echo [!] Invalid Login. Please try again... [!]
pause
goto menu

:success
title Multi Tool - Logged in as [%user%]
cls
echo.
echo ╔════════════════════════════════════════════════════╗
echo ║                                                    ║
echo ║        1 - Google                                  ║
echo ║        2 - Open Discord                            ║
echo ║        3 - Open Task Manager                       ║
echo ║        4 - Open Oracle VirtualBox                  ║
echo ║        5 - Discord IP Sniffer                      ║
echo ║                                                    ║
echo ╚════════════════════════════════════════════════════╝
echo.
set /p a=Select an option [%user%]: 

if "%a%"=="1" start https://www.google.com/ & goto success
if "%a%"=="2" start discord & goto success
if "%a%"=="3" start taskmgr & goto success
if "%a%"=="4" start virtualbox & goto success
if "%a%"=="5" goto sniffer
if "%a%"=="devmode" goto devmode
echo [!] Invalid Choice. Please try again... [!]
pause
goto success

:sniffer
cls
title Discord Packet Sniffer (FAKE)
set /p victim=Enter Discord Username: 
cls
echo [*] Discord Packet Sniffer Initialized...
echo.
echo [*] Establishing WebSocket tunnel with Discord CDN...
ping localhost -n 2 >nul
echo [*] Handshaking secure session with %victim%...
ping localhost -n 2 >nul
echo [*] Sniffing packet headers...
ping localhost -n 1 >nul
echo [*] Resolving encrypted user address...
ping localhost -n 2 >nul
echo [*] Bypassing Discord NAT protection...
ping localhost -n 1 >nul
echo [*] Extracting metadata...
ping localhost -n 1 >nul

:: Generate random-looking IP and location details
set /a octet1=%random%%%255
set /a octet2=%random%%%255
set /a octet3=%random%%%255
set /a octet4=%random%%%255

setlocal enabledelayedexpansion
set /a pingval=%random%%%100+1

echo.
echo [√] IP ADDRESS FOUND: !octet1!.!octet2!.!octet3!.!octet4!
echo [√] LOCATION: Buenos Aires, Argentina
echo [√] ISP: FiberTel Networks
echo [√] Device Type: iOS 17
echo [√] Ping: !pingval! ms
echo.
pause
endlocal
goto success

:devmode
cls
title Developer Mode - GYEL Multi Tool
echo.
echo ╔══════════════════════════════════════════════╗
echo ║                DEVELOPER MENU                ║
echo ║                                              ║
echo ║     1 - Display System Info                   ║
echo ║     2 - List Running Tasks                   ║
echo ║     3 - Open File Explorer                   ║
echo ║     4 - Back to Main Menu                    ║
echo ║     5 - List Startup Programs                ║
echo ║     6 - Ping Local Devices (Simulated)       ║
echo ║                                              ║
echo ╚══════════════════════════════════════════════╝
echo.
echo.
set /p devopt=Select Dev Option: 

if /i "%devopt%"=="this isnt real" goto ggez
if "%devopt%"=="1" goto sysinfo
if "%devopt%"=="2" goto tasklist
if "%devopt%"=="3" start explorer.exe & goto devmode
if "%devopt%"=="4" goto success
if "%devopt%"=="5" goto startup
if "%devopt%"=="6" goto lanscan
goto devmode

:sysinfo
cls
echo [*] System Information:
echo.
systeminfo
echo.
pause
goto devmode

:tasklist
cls
echo [*] Listing Running Tasks:
tasklist
echo.
pause
goto devmode

:startup
cls
echo [*] Startup Programs - Current User:
reg query HKCU\Software\Microsoft\Windows\CurrentVersion\Run
echo.
echo [*] Startup Programs - All Users:
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Run
echo.
echo [*] Startup Folder:
dir "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
echo.
pause
goto devmode

:lanscan
cls
echo [*] Scanning local network for active devices...
set /a ipbase=192
set /a ipmid=168
set /a ipsub=1

setlocal enabledelayedexpansion
for /L %%i in (1,1,10) do (
    set /a rand=%random%%%2
    if !rand! EQU 1 (
        echo [✓] 192.168.1.%%i - Device Responded
    ) else (
        echo [X] 192.168.1.%%i - Timed Out
    )
    ping -n 1 -w 100 192.168.1.%%i >nul
)
endlocal
echo.
pause
goto devmode

:ggez
cls
title GGEZ Mode - Real Show Unleashed
echo.
echo ok you figured me out.
echo TIME FOR THE REAL SHOW
echo.
echo [*] Welcome to the real dev mode...
echo.
pause
goto ggezmenu

:ggezmenu
cls
title GGEZ Tools Menu
echo.
echo  ██████╗  ██████╗ ███████╗███████╗
echo ██╔════╝ ██╔════╝ ██╔════╝╚══███╔╝
echo ██║  ███╗██║  ███╗█████╗    ███╔╝ 
echo ██║   ██║██║   ██║██╔══╝   ███╔╝  
echo ╚██████╔╝╚██████╔╝███████╗███████╗
echo  ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
echo.
echo.
echo.
echo.
echo.
echo.
echo ╔════════════════════════════════════════════════════╗
echo ║                                                    ║
echo ║     1 - Spoof Generator                            ║
echo ║     2 - Simulated Breach Tool                      ║
echo ║     3 - Process Manipulator                        ║
echo ║     4 - Back to Developer Mode                     ║
echo ║                                                    ║
echo ╚════════════════════════════════════════════════════╝
echo.
set /p ggezopt=Select GGEZ Option: 

if "%ggezopt%"=="1" goto spoofgenerator
if "%ggezopt%"=="2" goto breachtool
if "%ggezopt%"=="3" goto processmanipulator
if "%ggezopt%"=="4" goto devmode
goto ggezmenu

:spoofgenerator
cls
title Spoof Generator
echo.

:: Generate a random fake name from a list
setlocal enabledelayedexpansion
set names[0]=John Doe
set names[1]=Jane Smith
set names[2]=Michael Johnson
set names[3]=Emily Davis
set names[4]=Daniel Wilson
set names[5]=Sarah Lee
set names[6]=David Brown
set names[7]=Laura White
set names[8]=Robert Harris
set names[9]=Olivia Clark

:: Generate a random address
set addresses[0]=1234 Elm St, Springfield, IL
set addresses[1]=5678 Oak Ave, Riverside, CA
set addresses[2]=9101 Pine Blvd, Seattle, WA
set addresses[3]=4321 Maple Dr, Austin, TX
set addresses[4]=8765 Birch Rd, Miami, FL
set addresses[5]=3456 Cedar Ln, Denver, CO
set addresses[6]=7890 Aspen Way, Portland, OR
set addresses[7]=1122 Willow Ct, Phoenix, AZ
set addresses[8]=6543 Chestnut St, Chicago, IL
set addresses[9]=2200 Redwood Dr, Los Angeles, CA

:: Generate random fake IP addresses
set /a octet1=%random%%%255
set /a octet2=%random%%%255
set /a octet3=%random%%%255
set /a octet4=%random%%%255

:: Generate a random date of birth
set day=%random%%%31+1
set month=%random%%%12+1
set year=%random%%%50+1970
set dob=%month%/%day%/%year%

:: Generate a random username
set username=user_%random%%%10000

:: Pick random values from the arrays
set /a nameIndex=%random%%%10
set /a addressIndex=%random%%%10

echo [*] Generating Fake Data...
echo [*] Fake Name: !names[%nameIndex%]!
echo [*] Fake Address: !addresses[%addressIndex%]!
echo [*] Fake Date of Birth: !dob!
echo [*] Fake IP Address: !octet1!.!octet2!.!octet3!.!octet4!
echo [*] Fake Username: !username!
echo.

pause
goto ggezmenu


:breachtool
cls
title Simulated Breach Tool
echo.
echo [*] Initiating Breach Sequence...
ping localhost -n 1 >nul
echo [*] Injecting Payload... Done.
ping localhost -n 1 >nul
echo [*] Bypassing Firewall... Done.
ping localhost -n 1 >nul
echo [*] Accessing Secure Network... Success.
ping localhost -n 1 >nul
echo [*] Injecting Malware... Done.
echo [*] System Breached: Access Level - Full Control
echo.
pause
goto ggezmenu

:processmanipulator
cls
title Process Manipulator
echo.
echo [*] Listing Active Processes...
echo [*] Process ID   |   Process Name
echo ----------------------------------------
echo 1234            |   chrome.exe
echo 5678            |   explorer.exe
echo 91011           |   notepad.exe
echo 1213            |   discord.exe
echo.
set /p pid=Enter Process ID to Terminate: 
echo.
echo [*] Terminating Process %pid%... Success.
echo [*] Process %pid% terminated.
echo.
pause
goto ggezmenu
