@echo off
SETLOCAL EnableDelayedExpansion
TITLE DayZ Server Launcher

:: 1. Einstellungen laden
if exist "settings.cmd" (
    call "settings.cmd"
) else (
    echo FEHLER: Die Datei settings.cmd wurde nicht gefunden!
    pause
    exit
)

:: 2. ServerWiki.Network Logo anzeigen
SET "COLORS=Blue,Green,Cyan,DarkBlue,DarkGreen,DarkCyan,DarkRed,DarkMagenta,DarkYellow"
if exist "ServerWikiLogo.txt" (
    powershell -Command "$colors = '%COLORS%'.Split(','); $randomColor = Get-Random -InputObject $colors; $content = Get-Content -Path 'ServerWikiLogo.txt'; $content | ForEach-Object {Write-Host $_ -ForegroundColor $randomColor}"
) else (
    echo [Logo nicht gefunden - ServerWiki.Network]
)

:: 3. Warnung / Hinweis
echo.
powershell -Command  "Write-Host 'HINWEIS:' -ForegroundColor DarkYellow;"
powershell -Command  "Write-Host 'Wenn du DayZ auf einem anderen Laufwerk als C:\ installiert hast, ' -ForegroundColor DarkCyan;"
powershell -Command  "Write-Host 'beende bitte diese Anwendung und bearbeite die Datei settings.cmd manuell.' -ForegroundColor DarkCyan;"
echo.

:: 4. Map-Auswahl
choice /C CES /M "Welchen Server moechtest du starten? (C)hernarus, (E)noch oder (S)akhal"

if "%errorlevel%"=="3" (
    set "serverConfig=Sakhal_serverDZ.cfg"
    set "profile_dir=profiles\Sakhal"
    goto launch
)
if "%errorlevel%"=="2" (
    set "serverConfig=Enoch_serverDZ.cfg"
    set "profile_dir=profiles\Enoch"
    goto launch
)
if "%errorlevel%"=="1" (
    set "serverConfig=Cherno_serverDZ.cfg"
    set "profile_dir=profiles\Chernarus"
    goto launch
)

:: 5. Server Start & Auto-Restart Logik
:launch
:: Wechsle in das Server-Verzeichnis
cd /D "%SERVER_PATH%"

:loop
echo.
echo =====================================================
echo [%time%] Server wird gestartet...
echo Config: %serverConfig%
echo Mods: %MODS%
echo =====================================================
echo Druecke STRG+C, um den Server komplett zu beenden.
echo.

:: Der Startbefehl fuer den dedizierten Server
start /wait DayZServer_x64.exe -config=%serverConfig% -port=2302 "-mod=%MODS%" "-profiles=%profile_dir%" "-name=%SERVER_NAME%" -cpuCount=4 -dologs -adminlog -netlog -freezecheck

echo [%time%] ACHTUNG: Der Server wurde beendet oder ist abgestuerzt!
echo Starte neu in 5 Sekunden...
timeout /t 5 /nobreak >nul
goto loop