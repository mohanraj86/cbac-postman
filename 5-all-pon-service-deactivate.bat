REM start "PON1-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON1 -e ENV -g GLB -k --export-environment ENV -n 64
REM timeout 10 > NUL
REM start "PON2-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON2 -e ENV -g GLB -k --export-environment ENV -n 60
REM timeout 10 > NUL
REM start "PON3-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON3 -e ENV -g GLB -k --export-environment ENV -n 64
REM timeout 10 > NUL
REM start "PON4-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON4 -e ENV -g GLB -k --export-environment ENV -n 62
REM timeout 10 > NUL
REM start "PON5-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON5 -e ENV -g GLB -k --export-environment ENV -n 64
REM timeout 10 > NUL
REM start "PON6-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON6 -e ENV -g GLB -k --export-environment ENV -n 60
REM timeout 10 > NUL
start "PON7-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON7 -e ENV -g GLB -k --export-environment ENV -n 61
timeout 10 > NUL
REM start "PON8-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON8 -e ENV -g GLB -k --export-environment ENV -n 31
REM timeout 10 > NUL
REM start "PON9-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON9 -e ENV -g GLB -k --export-environment ENV -n 60
REM timeout 10 > NUL
REM start "PON10-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON10 -e ENV -g GLB -k --export-environment ENV -n 30
REM timeout 10 > NUL
REM start "PON11-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON11 -e ENV -g GLB -k --export-environment ENV -n 61
REM timeout 10 > NUL
REM start "PON12-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON12 -e ENV -g GLB -k --export-environment ENV -n 63
REM timeout 10 > NUL
REM start "PON13-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON13 -e ENV -g GLB -k --export-environment ENV -n 54
REM timeout 10 > NUL
start "PON14-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON14 -e ENV -g GLB -k --export-environment ENV -n 46
timeout 10 > NUL
start "PON15-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON15 -e ENV -g GLB -k --export-environment ENV -n 42
timeout 10 > NUL
start "PON16-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON16 -e ENV -g GLB -k --export-environment ENV -n 54
timeout 10 > NUL
REM start "PON19-Service-Activation"  call newman run full-collection --folder=DEACTIVATE_SER_PON19 -e ENV -g GLB -k --export-environment ENV -n 61
REM timeout 10 > NUL
