@echo off
choice /C:LT /T 5 /D L /N /M "Start [L]atest or [T]ested? Latest starts in 5 seconds"

if %ERRORLEVEL% == 1 goto latest
goto tested

:latest
wget -N https://josm.openstreetmap.de/josm-latest.jar && java -jar josm-latest.jar
goto end

:tested
wget -N https://josm.openstreetmap.de/josm-tested.jar && java -jar josm-tested.jar
goto end

:end
