call newman run full-collection6 --folder=DEACTIVATE_PON5 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON5_deactivate.html
timeout 5 > NUL
call newman run full-collection6 --folder=DEACTIVATE_PON6 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON6_deactivate.html
timeout 5 > NUL
call newman run full-collection6 --folder=DEACTIVATE_PON10 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON10_deactivate.html
timeout 5 > NUL
call newman run full-collection6 --folder=DEACTIVATE_PON11 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON11_deactivate.html
timeout 5 > NUL
 call newman run full-collection6 --folder=DEACTIVATE_PON19 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON19_deactivate.html
timeout 5 > NUL

REM #### RACK-C4
call newman run full-collection6 --folder=DEACTIVATE_PON7 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON7_deactivate.html
timeout 5 > NUL
call newman run full-collection6 --folder=DEACTIVATE_PON13 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON13_deactivate.html
timeout 5 > NUL
call newman run full-collection6 --folder=DEACTIVATE_PON28 -e ENV6 -g GLB6 -k --export-environment ENV6 -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\PON28_deactivate.html
timeout 5 > NUL