@echo off
for /L %%n in (1,1,100) do (
ECHO loop count ---- %%n
timeout 2700 > NUL
cd C:\Users\atca\Documents\Mohan\postman_ipv6\postman-scripts
call newman run full-collection6 --folder=GET_SESSION_ID -e ENV6 -g GLB6 -k --export-environment ENV6
timeout 3 > NUL
call newman run full-collection6 --folder=SUBSCRIBE_KPI -e ENV6 -g GLB6 -k --export-environment ENV6 -d SUBSCRIBE_KPI.json
timeout 30 > NUL
call newman run full-collection6 --folder=GET_KPI -e ENV6 -g GLB6 -k --export-environment ENV6 -d SUBSCRIBE_KPI.json -r htmlextra --reporter-htmlextra-omitHeaders --reporter-htmlextra-export C:\reliability_test_logs\olt-deactivate\report_before_%%n.html
timeout 10 > NUL
call newman run full-collection6 --folder=CLEAR_KPI -e ENV6 -g GLB6 -k --export-environment ENV6 -d SUBSCRIBE_KPI.json 
timeout 10 > NUL
call newman run full-collection6 --folder=UNSUBSCRIBE_KPI -e ENV6 -g GLB6 -k --export-environment ENV6 -d SUBSCRIBE_KPI.json
timeout 10 > NUL
cd C:\Users\atca\Documents\Mohan\postman_ipv6\postman-scripts\scripts
call plink.exe -batch -ssh admin@172.27.181.211 -pw SCale@223 -m oltcli_dump.txt >>C:\reliability_test_logs\olt-deactivate\oltcli_dump_before_%%n.log
call plink.exe -batch -ssh admin@172.27.181.211 -pw SCale@223 -m missing_flows.txt >>C:\reliability_test_logs\olt-deactivate\missing_flows_before_%%n.log
call plink.exe -batch -ssh admin@172.27.181.211 -pw SCale@223 -m voltha_dev_list.txt >>C:\reliability_test_logs\olt-deactivate\voltha_dev_list%%n.log
ECHO !!!!!!!!!! All Done !!!!!!!!!!!!!
timeout 3 > NUL
)
