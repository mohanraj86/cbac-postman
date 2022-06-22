ECHO !!!!!!!!!! 1.512-onu-service-cleanup starts here !!!!!!!!!!!!!
call newman run full-collection6 --folder=DEACTIVATE_SER_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 -n %2
call newman run full-collection6 --folder=DEL_SER_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 -n %2
call newman run full-collection6 --folder=DEL_SUB_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 -n %2
call newman run full-collection6 --folder=DEACTIVATE_UNI_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 -n %2
call newman run full-collection6 --folder=DEACTIVATE_ONT_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 -n %2
call newman run full-collection6 --folder=DELETE_ONT_%1 -e ENV6 -g GLB6 -k --export-environment ENV6 -n %2