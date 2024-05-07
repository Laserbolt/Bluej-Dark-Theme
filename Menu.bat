@ECHO OFF
@Title Theme Menu
color 0F

REM load or create save file
if not exist save.txt (
    type NUL > EmptyFile.txt
	echo 1 > save.txt
	< save.txt set /p Theme=
) else (
    < save.txt set /p Theme=
)
REM save single backspace character for input
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A

:MENU
CLS
@Mode 110,43

chcp 65001 >NUL
ECHO(
ECHO(
ECHO(
ECHO        ██████╗ ██╗     ██╗   ██╗███████╗     ██╗  ████████╗██╗  ██╗███████╗███╗   ███╗███████╗███████╗
ECHO        ██╔══██╗██║     ██║   ██║██╔════╝     ██║  ╚══██╔══╝██║  ██║██╔════╝████╗ ████║██╔════╝██╔════╝
ECHO        ██████╔╝██║     ██║   ██║█████╗       ██║     ██║   ███████║█████╗  ██╔████╔██║█████╗  ███████╗
ECHO        ██╔══██╗██║     ██║   ██║██╔══╝  ██   ██║     ██║   ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝  ╚════██║
ECHO        ██████╔╝███████╗╚██████╔╝███████╗╚█████╔╝     ██║   ██║  ██║███████╗██║ ╚═╝ ██║███████╗███████║
ECHO        ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝ ╚════╝      ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝╚══════╝
ECHO(
ECHO(
ECHO                       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
ECHO                       ┃                                                              ┃
ECHO                       ┃ This is the menu for selecting various Bluej Themes. Either  ┃
ECHO                       ┃ select a theme to install or one the separate options        ┃
ECHO                       ┃                                                              ┃
ECHO                       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
ECHO(
ECHO(
ECHO                    ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
ECHO                    ┃                              ┃           ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
ECHO                    ┃  THEMES:                     ┃           ┃                            ┃
ECHO                    ┃                              ┃           ┃  OPTIONS:                  ┃
if %Theme% EQU 1 GOTO Defaulten
ECHO                    ┃   ┏━━━━━━━━━━━━━━━━━┓        ┃           ┃                            ┃
ECHO                    ┃   ┃ 1-Default Theme ┃        ┃           ┃   ┏━━━━━━━━━━━━━┓          ┃
ECHO                    ┃   ┗━━━━━━━━━━━━━━━━━┛        ┃           ┃   ┃ 5-Exit Menu ┃          ┃
GOTO Defaultov
:Defaulten
ECHO                    ┃   [92m┏━━━━━━━━━━━━━━━━━┓[0m        ┃           ┃                            ┃
ECHO                    ┃   [92m┃ 1-Default Theme ┃[0m        ┃           ┃   ┏━━━━━━━━━━━━━┓          ┃
ECHO                    ┃   [92m┗━━━━━━━━━━━━━━━━━┛[0m        ┃           ┃   ┃ 5-Exit Menu ┃          ┃
:Defaultov
if %Theme% EQU 2 GOTO Darken
ECHO                    ┃   ┏━━━━━━━━━━━━━━┓           ┃           ┃   ┗━━━━━━━━━━━━━┛          ┃
ECHO                    ┃   ┃ 2-Dark Theme ┃           ┃           ┃   ┏━━━━━━━━━━━━━━━┓        ┃
ECHO                    ┃   ┗━━━━━━━━━━━━━━┛           ┃           ┃   ┃ 6-Access Data ┃        ┃
GOTO Darkov
:Darken
ECHO                    ┃   [92m┏━━━━━━━━━━━━━━┓[0m           ┃           ┃   ┗━━━━━━━━━━━━━┛          ┃
ECHO                    ┃   [92m┃ 2-Dark Theme ┃[0m           ┃           ┃   ┏━━━━━━━━━━━━━━━┓        ┃
ECHO                    ┃   [92m┗━━━━━━━━━━━━━━┛[0m           ┃           ┃   ┃ 6-Access Data ┃        ┃
:Darkov
if %Theme% EQU 3 GOTO Roseen
ECHO                    ┃   ┏━━━━━━━━━━━━━━┓           ┃           ┃   ┗━━━━━━━━━━━━━━━┛        ┃
ECHO                    ┃   ┃ 3-Rose Theme ┃           ┃           ┃   ┏━━━━━━━━━━━━━━┓         ┃
ECHO                    ┃   ┗━━━━━━━━━━━━━━┛           ┃           ┃   ┃ 7-Open Bluej ┃         ┃
GOTO Roseov
:Roseen
ECHO                    ┃   [92m┏━━━━━━━━━━━━━━┓[0m           ┃           ┃   ┗━━━━━━━━━━━━━━━┛        ┃
ECHO                    ┃   [92m┃ 3-Rose Theme ┃[0m           ┃           ┃   ┏━━━━━━━━━━━━━━┓         ┃
ECHO                    ┃   [92m┗━━━━━━━━━━━━━━┛[0m           ┃           ┃   ┃ 7-Open Bluej ┃         ┃
:Roseov
if %Theme% EQU 4 GOTO Highen
ECHO                    ┃   ┏━━━━━━━━━━━━━━━━━━━━━━━┓  ┃           ┃   ┗━━━━━━━━━━━━━━┛         ┃
ECHO                    ┃   ┃ 4-High Contrast Theme ┃  ┃           ┃                            ┃
ECHO                    ┃   ┗━━━━━━━━━━━━━━━━━━━━━━━┛  ┃           ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
GOTO Highov
:Highen
ECHO                    ┃   [92m┏━━━━━━━━━━━━━━━━━━━━━━━┓[0m  ┃           ┃   ┗━━━━━━━━━━━━━━┛         ┃
ECHO                    ┃   [92m┃ 4-High Contrast Theme ┃[0m  ┃           ┃                            ┃
ECHO                    ┃   [92m┗━━━━━━━━━━━━━━━━━━━━━━━┛[0m  ┃           ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
:Highov
ECHO                    ┃                              ┃
ECHO                    ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
ECHO(
ECHO(
SET /P errorlevel=%BS%                           Type the number next to the option and press enter:
chcp 437 >NUL

if %errorlevel%==1 (call :copystyle "Default Theme" )
if %errorlevel%==2 (call :copystyle "Dark Theme" )
if %errorlevel%==3 (call :copystyle "Rose Theme" )
if %errorlevel%==4 (call :copystyle "High Contrast Theme" )
if %errorlevel%==5 (exit /b)
if %errorlevel%==6 (start "" "C:\Program Files\BlueJ\lib\stylesheets")
if %errorlevel%==7 (start "" "C:\Program Files\BlueJ\BlueJ.exe")
GOTO MENU

:copystyle
xcopy /Q /Y /E /I "%~dp0\%~1\stylesheets" "C:\Program Files\BlueJ\lib\stylesheets" > nul 2>&1
taskkill /f /im javaw.exe > nul 2>&1
set Theme=%errorlevel%
echo %Theme% > save.txt
GOTO complete

:complete
@Mode 96,16
CLS

chcp 65001 >NUL
ECHO(
ECHO      ________  __________  _________   _____   ________________    __    __    __________
ECHO     /_  __/ / / / ____/  ┃/  / ____/  /  _/ ┃ / / ___/_  __/   ┃  / /   / /   / ____/ __ \
ECHO      / / / /_/ / __/ / /┃_/ / __/     / //  ┃/ /\__ \ / / / /┃ ┃ / /   / /   / __/ / / / /
ECHO     / / / __  / /___/ /  / / /___   _/ // /┃  /___/ // / / ___ ┃/ /___/ /___/ /___/ /_/ /
ECHO    /_/ /_/ /_/_____/_/  /_/_____/  /___/_/ ┃_//____//_/ /_/  ┃_/_____/_____/_____/_____/
ECHO(         
ECHO(
ECHO          ┏━━━━━━━━━━━━━┓   ┏━━━━━━━━━━━━━━━━━━┓   ┏━━━━━━━━━━━━━━┓
ECHO          ┃ 1-Exit Menu ┃   ┃ 2-Return to Menu ┃   ┃ 3-Open Bluej ┃
ECHO          ┗━━━━━━━━━━━━━┛   ┗━━━━━━━━━━━━━━━━━━┛   ┗━━━━━━━━━━━━━━┛
ECHO(
ECHO(
SET /P errorlevel=%BS%           Type the number next to the option and press enter:
chcp 437 >NUL

if %errorlevel%==1 (exit /b)
if %errorlevel%==2 (GOTO MENU)
if %errorlevel%==3 (start "" "C:\Program Files\BlueJ\BlueJ.exe")
GOTO complete