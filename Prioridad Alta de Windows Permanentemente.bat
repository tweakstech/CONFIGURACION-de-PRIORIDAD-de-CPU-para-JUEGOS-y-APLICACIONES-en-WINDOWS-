@echo off
:: Créditos: Creado por tweakstech

title Prioridad Alta de Windows Permanentemente
color 30

:start
echo.
echo Prioridad Alta de Windows Permanentemente
echo ADVERTENCIA: Los programas solo se pueden configurar a Alta Prioridad como Administrador. (clic derecho y ejecutar como admin)
echo.
echo Presiona 1 y ENTER para ver una lista de Juegos que se configurarán en Alta Prioridad Permanentemente.
echo Presiona 2 y ENTER para configurar todos los Juegos en Alta Prioridad ahora.
echo Presiona ENTER para salir.
set /p choice=

if "%choice%"=="1" goto list
if "%choice%"=="2" goto set_priority
if "%choice%"=="" exit
goto start

REM Añadir el nombre del juego en la lista a continuación:
:list
echo.
echo Total de Juegos: 12
echo.
echo Metal Gear Solid Saga (1998-2015, Acción/Aventura, Hideo Kojima)
echo Splinter Cell Saga (2002-2013, Acción/Sigilo, Sam Fisher)
echo Assassin's Creed 2, 3, Black Flag (2009, 2012, 2013, Acción/Aventura, Desmond Miles)
echo Syphon Filter (1999, Acción/Sigilo, Logan)
echo Watch Dogs (2014, Acción/Aventura, Aiden Pearce)
echo Resident Evil 4 (2005, Survival Horror, Leon S. Kennedy)
echo Silent Hill 2 (2001, Survival Horror, James Sunderland)
echo Tomb Raider (2013, Acción/Aventura, Lara Croft)
echo Dragon Ball Z: Budokai Tenkaichi (2005, Lucha, Varios personajes de Dragon Ball Z)
echo Grand Theft Auto III (2001, Acción/Aventura, Varios personajes)
echo Bully (2006, Acción/Aventura, Jimmy Hopkins)
echo Mafia (2002, Acción/Aventura, Tommy Angelo)
echo Mafia II (2010, Acción/Aventura, Vito Scaletta)
echo Rainbow Six Siege (2015, Shooter/Táctico, Operadores de Rainbow Six)
echo.
echo Presiona 0 y ENTER para volver al Menú.
set /p choice=
if "%choice%"=="0" goto start
goto list

REM Coloca el nombre del ejecutable del juego en la lista a continuación:
:set_priority
@echo on
for %%G in (
    "MGSI.exe"
    "SCS.exe"
    "AC2.exe"
    "AC3.exe"
    "ACBF.exe"
    "sf.exe"
    "WatchDogs.exe"
    "RE4.exe"
    "SH2.exe"
    "TombRaider.exe"
    "DBZBT.exe"
    "gta3.exe"
    "Bully.exe"
    "Mafia.exe"
    "Mafia2.exe"
    "RainbowSix.exe"
) do (
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%~G\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 3 /f
)
@echo off
echo.
echo Todos los Juegos configurados en Alta Prioridad Permanentemente.
echo Presiona 0 y ENTER para volver al Menú.
set /p choice=
if "%choice%"=="0" goto start
exit
