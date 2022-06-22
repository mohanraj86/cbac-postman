REM set TS=%time%
ECHO script starting time -- yyyy  >> C:\reliability_test_logs\log-dump\timestamp.log
cd C:\Users\atca\Documents\Mohan\postman_ipv6\postman-scripts
call newman run full-collection6 --folder=GET_SESSION_ID -e ENV6 -g GLB6 -k --export-environment ENV6
timeout 3 > NUL
call newman run full-collection6 --folder=SUBSCRIBE_KPI -e ENV6 -g GLB6 -k --export-environment ENV6 -d SUBSCRIBE_KPI.json
timeout 30 > NUL
call newman run full-collection6 --folder=GET_KPI -e ENV6 -g GLB6 -k --export-environment ENV6 -d SUBSCRIBE_KPI.json -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\log-dump\KPI_yyyy.html
timeout 10 > NUL
call newman run full-collection6 --folder=CLEAR_KPI -e ENV6 -g GLB6 -k --export-environment ENV6 -d SUBSCRIBE_KPI.json 
timeout 10 > NUL
call newman run full-collection6 --folder=UNSUBSCRIBE_KPI -e ENV6 -g GLB6 -k --export-environment ENV6 -d SUBSCRIBE_KPI.json
timeout 10 > NUL
cd C:\Users\atca\Documents\Mohan\postman_ipv6\postman-scripts\scripts
call plink.exe -batch -ssh admin@172.27.181.211 -pw SCale@223 -m oltcli_dump.txt >>C:\reliability_test_logs\log-dump\oltcli_dump_yyyy.log
call plink.exe -batch -ssh admin@172.27.181.211 -pw SCale@223 -m missing_flows.txt >>C:\reliability_test_logs\log-dump\missing_flows_yyyy.log
call plink.exe -batch -ssh admin@172.27.181.211 -pw SCale@223 -m voltha_dev_list.txt >>C:\reliability_test_logs\log-dump\voltha_dev_list_yyyy.log
REM call plink.exe -batch -ssh admin@172.27.181.211 -pw SCale@223 -m sdponlogs.txt >>C:\reliability_test_logs\log-dump\sdponlogs_yyyy.log
ECHO !!!!!!!!!! All Done !!!!!!!!!!!!!
ECHO script end time -- yyyy  >> C:\reliability_test_logs\log-dump\timestamp.log
