@echo off
for /L %%n in (1,1,100) do (
ECHO loop count ---- %%n
timeout 5 > NUL
cd C:\Users\atca\Documents\Mohan\postman_ipv6\postman-scripts
call newman run full-collection6 --folder=GET_SESSION_ID -e ENV6 -g GLB6 -k --export-environment ENV6
timeout 3 > NUL
REM call 6-all-pon-deactivate6.bat
REM timeout 900 > NUL
call newman run full-collection6 --folder=GET_SESSION_ID -e ENV6 -g GLB6 -k --export-environment ENV6
REM call 4-all-pon-port-activate6.bat
REM timeout 1800 > NUL
cd C:\Users\atca\Documents\Mohan\postman_ipv6\postman-scripts\scripts
call mylogdump.bat
)