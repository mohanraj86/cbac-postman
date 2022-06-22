@echo off
for /L %%n in (1,1,100) do (
ECHO loop count ---- %%n
timeout 5 > NUL
cd C:\Users\atca\Desktop\Mohan_Postman_rework
call newman run full-collection6 --folder=GET_SESSION_ID -e ENV6 -g GLB6 -k --export-environment ENV6
timeout 3 > NUL
call 6-all-pon-deactivate6.bat
timeout 900 > NUL
call newman run full-collection6 --folder=GET_SESSION_ID -e ENV6 -g GLB6 -k --export-environment ENV6
call 4-all-pon-port-activate6.bat
timeout 1200 > NUL
call newman run full-collection6 --folder=SUBSCRIBE_KPI -e ENV6 -g GLB6 -k --export-environment ENV6 -d SUBSCRIBE_KPI.json
timeout 30 > NUL
call newman run full-collection6 --folder=GET_KPI -e ENV6 -g GLB6 -k --export-environment ENV6 -d SUBSCRIBE_KPI.json -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\pon-deactivate\report_before_%%n.html
timeout 10 > NUL
call newman run full-collection6 --folder=CLEAR_KPI -e ENV6 -g GLB6 -k --export-environment ENV6 -d SUBSCRIBE_KPI.json 
timeout 10 > NUL
call newman run full-collection6 --folder=UNSUBSCRIBE_KPI -e ENV6 -g GLB6 -k --export-environment ENV6 -d SUBSCRIBE_KPI.json
timeout 10 > NUL
cd C:\Users\atca\Desktop\Mohan_Postman_rework\scripts
call plink.exe -batch -ssh oltausr@172.27.181.211 -pw SCale@223 -m oltcli_dump.txt >>C:\reliability_test_logs\pon-deactivate\oltcli_dump_before_%%n.log
ECHO oltcli_dump collected....
call plink.exe -batch -ssh oltausr@172.27.181.211 -pw SCale@223 -m missing_flows.txt >>C:\reliability_test_logs\pon-deactivate\missing_flows_before_%%n.log
ECHO missing_flows collected....
call plink.exe -batch -ssh oltausr@172.27.181.211 -pw SCale@223 -m voltha_dev_list.txt >>C:\reliability_test_logs\pon-deactivate\voltha_dev_list%%n.log
ECHO voltha device list collected....
call plink.exe -batch -ssh oltausr@172.27.181.211 -pw SCale@223 -m sdponlogs.txt >>C:\reliability_test_logs\pon-deactivate\sdponlogs%%n.log
ECHO sdpon_logs collected....
ECHO !!!!!!!!!! All Done !!!!!!!!!!!!!
timeout 3 > NUL
)