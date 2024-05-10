@ECHO OFF
@Title Theme Menu
color 0F
cd %~dp0

REM saving variables
set sheets="%ProgramFiles%\BlueJ\lib\stylesheets"
set program="%ProgramFiles%\BlueJ\BlueJ.exe"
set save="%~dp0Saves\theme.log"
REM load or create save file and folder
if not exist %save% (
	md %save%\..
	echo 1 > %save%
	< %save% set /p Theme=
) else (
    < %save% set /p Theme=
)
REM create single backspace character for input prompt
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
ECHO                       ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
ECHO                       ┃                                                               ┃
ECHO                       ┃  This is the menu for selecting various Bluej Themes. Either  ┃
ECHO                       ┃     select a theme to install or one the separate options     ┃
ECHO                       ┃                                                               ┃
ECHO                       ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
ECHO(
ECHO(
ECHO                    ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓           ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
ECHO                    ┃                              ┃           ┃                            ┃
ECHO                    ┃  THEMES:                     ┃           ┃  OPTIONS:                  ┃
ECHO                    ┃                              ┃           ┃                            ┃
if %Theme% EQU 1 GOTO Defaulten
ECHO                    ┃   ┏━━━━━━━━━━━━━━━━━┓        ┃           ┃   ┏━━━━━━━━━━━━━┓          ┃
ECHO                    ┃   ┃ 1-Default Theme ┃        ┃           ┃   ┃ 5-Exit Menu ┃          ┃
ECHO                    ┃   ┗━━━━━━━━━━━━━━━━━┛        ┃           ┃   ┗━━━━━━━━━━━━━┛          ┃
GOTO Defaultov
:Defaulten
ECHO                    ┃   [92m┏━━━━━━━━━━━━━━━━━┓[0m        ┃           ┃   ┏━━━━━━━━━━━━━┓          ┃
ECHO                    ┃   [92m┃ 1-Default Theme ┃[0m        ┃           ┃   ┃ 5-Exit Menu ┃          ┃
ECHO                    ┃   [92m┗━━━━━━━━━━━━━━━━━┛[0m        ┃           ┃   ┗━━━━━━━━━━━━━┛          ┃
:Defaultov
if %Theme% EQU 2 GOTO Darken
ECHO                    ┃   ┏━━━━━━━━━━━━━━┓           ┃           ┃   ┏━━━━━━━━━━━━━━━┓        ┃
ECHO                    ┃   ┃ 2-Dark Theme ┃           ┃           ┃   ┃ 6-Access Data ┃        ┃
ECHO                    ┃   ┗━━━━━━━━━━━━━━┛           ┃           ┃   ┗━━━━━━━━━━━━━━━┛        ┃
GOTO Darkov
:Darken
ECHO                    ┃   [92m┏━━━━━━━━━━━━━━┓[0m           ┃           ┃   ┏━━━━━━━━━━━━━━━┓        ┃
ECHO                    ┃   [92m┃ 2-Dark Theme ┃[0m           ┃           ┃   ┃ 6-Access Data ┃        ┃
ECHO                    ┃   [92m┗━━━━━━━━━━━━━━┛[0m           ┃           ┃   ┗━━━━━━━━━━━━━━━┛        ┃
:Darkov
if %Theme% EQU 3 GOTO Roseen
ECHO                    ┃   ┏━━━━━━━━━━━━━━┓           ┃           ┃   ┏━━━━━━━━━━━━━━┓         ┃
ECHO                    ┃   ┃ 3-Rose Theme ┃           ┃           ┃   ┃ 7-Open Bluej ┃         ┃
ECHO                    ┃   ┗━━━━━━━━━━━━━━┛           ┃           ┃   ┗━━━━━━━━━━━━━━┛         ┃
GOTO Roseov
:Roseen
ECHO                    ┃   [92m┏━━━━━━━━━━━━━━┓[0m           ┃           ┃   ┏━━━━━━━━━━━━━━┓         ┃
ECHO                    ┃   [92m┃ 3-Rose Theme ┃[0m           ┃           ┃   ┃ 7-Open Bluej ┃         ┃
ECHO                    ┃   [92m┗━━━━━━━━━━━━━━┛[0m           ┃           ┃   ┗━━━━━━━━━━━━━━┛         ┃
:Roseov
if %Theme% EQU 4 GOTO Highen
ECHO                    ┃   ┏━━━━━━━━━━━━━━━━━━━━━━━┓  ┃           ┃   ┏━━━━━━━━━━━━━┓          ┃
ECHO                    ┃   ┃ 4-High Contrast Theme ┃  ┃           ┃   ┃ 8-Open Repo ┃          ┃
ECHO                    ┃   ┗━━━━━━━━━━━━━━━━━━━━━━━┛  ┃           ┃   ┗━━━━━━━━━━━━━┛          ┃
GOTO Highov
:Highen
ECHO                    ┃   [92m┏━━━━━━━━━━━━━━━━━━━━━━━┓[0m  ┃           ┃   ┏━━━━━━━━━━━━━┓          ┃
ECHO                    ┃   [92m┃ 4-High Contrast Theme ┃[0m  ┃           ┃   ┃ 8-Open Repo ┃          ┃
ECHO                    ┃   [92m┗━━━━━━━━━━━━━━━━━━━━━━━┛[0m  ┃           ┃   ┗━━━━━━━━━━━━━┛          ┃
:Highov
ECHO                    ┃                              ┃           ┃                            ┃
ECHO                    ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛           ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
ECHO(
ECHO(
SET /P choice=%BS%                           Type the number next to your choice and press enter: 
chcp 437 >NUL

if %choice%==1 (call :copystyle "Default" )
if %choice%==2 (call :copystyle "Dark" )
if %choice%==3 (call :copystyle "Rose" )
if %choice%==4 (call :copystyle "High Contrast" )
if %choice%==5 (exit /b)
if %choice%==6 (start "" %sheets%)
if %choice%==7 (start "" %program%)
if %choice%==8 (start "" https://github.com/Laserbolt/Bluej-Themes)
GOTO MENU

:copystyle
xcopy /Q /Y /E /I "%~dp0\%~1 Theme\stylesheets" %sheets% > nul 2>&1
taskkill /f /im javaw.exe > nul 2>&1
set Theme=%choice%
echo %Theme% > %save%
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
SET /P choice=%BS%           Type the number next to the text and press enter: 
chcp 437 >NUL

if %choice%==1 (exit)
if %choice%==2 (GOTO MENU)
if %choice%==3 (start "" %program%)
GOTO complete