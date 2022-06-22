call newman run full-collection6 --folder=ACTIVATE_PON5 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON5_activate.html
timeout 5 > NUL
call newman run full-collection6 --folder=ACTIVATE_PON6 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON6_activate.html
timeout 5 > NUL
call newman run full-collection6 --folder=ACTIVATE_PON10 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON10_activate.html
timeout 5 > NUL
call newman run full-collection6 --folder=ACTIVATE_PON11 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON11_activate.html
timeout 5 > NUL
 call newman run full-collection6 --folder=ACTIVATE_PON19 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON19_activate.html
timeout 5 > NUL

REM #### RACK-C4
call newman run full-collection6 --folder=ACTIVATE_PON7 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON7_activate.html
timeout 5 > NUL
call newman run full-collection6 --folder=ACTIVATE_PON13 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON13_activate.html
timeout 5 > NUL
call newman run full-collection6 --folder=ACTIVATE_PON28 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON28_activate.html
timeout 5 > NUL