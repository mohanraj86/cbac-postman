ECHO !!!!!!!!!! 1.512-onu-service-Configuartion starts here !!!!!!!!!!!!!
cd C:\Users\atca\Desktop\Mohan_Postman_rework
ECHO !!!!!!!!!! 2.ONT configuration for %1 starts here !!!!!!!!!!!!!
REM call newman run full-collection6 --folder=ACTIVATE_%1 -e ENV6 -g GLB6 -k --export-environment ENV6
call newman run full-collection6 --folder=ADD_ONT_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 -d %1-ONT.json -n %2
call newman run full-collection6 --folder=GET_ONT_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 
call newman run full-collection6 --folder=ACTIVATE_ONT_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 -n %2
call newman run full-collection6 --folder=ACTIVATE_UNI_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 -n %2
ECHO !!!!!!!!!! 2.ONT configuration for %1 done !!!!!!!!!!!!!
ECHO .
ECHO !!!!!!!!!! 3.Subscrier/service configuration for %1 starts here !!!!!!!!!!!!!
call newman run full-collection6 --folder=ADD_SUB_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 -n %2
call newman run full-collection6 --folder=GET_SUB_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 
call newman run full-collection6 --folder=ADD_1SER_3PBIT_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 -n %2
call newman run full-collection6 --folder=GET_SER_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 
call newman run full-collection6 --folder=ACTIVATE_SER_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 -n %2
ECHO !!!!!!!!!! 3.Subscrier/service configuration for %1 done !!!!!!!!!!!!!