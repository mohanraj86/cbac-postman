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