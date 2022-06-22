@echo %time%

REM #### RACK-C1 ####
REM call service-g21.bat PON1 64
REM call service-g21.bat PON2 60
REM call service-g21.bat PON4 62

REM #### RACK-C2 ####
REM call service-g21.bat PON14 61
REM call service-g21.bat PON15 61
REM call service-g21.bat PON16 59

REM #### RACK-C3 ####
REM call service-g21.bat PON9 60
REM call service-g21.bat PON12 63

REM #### RACK-C4 ####
REM call service-g21.bat PON3 64 #connected to typeB pair 13-3,and this port moved to pon-28
call service-twgp-v6.bat PON7 63
call service-twgp-v6.bat PON13 64
call service-g21-v6.bat PON28 64 

REM #### Rack-C5 ####
call service-zte-v6.bat PON5 63
call service-zte-v6.bat PON6 63
call service-zte-v6.bat PON19 59
call service-zte-v6.bat PON10 68
call service-zte-v6.bat PON11 63



REM Previous config

REM call service-g21.bat PON1 64
REM call service-g21.bat PON2 60
REM REM call service-g21.bat PON3 64 #connected to typeB pair 13-3,and this port moved to pon-28
REM call service-g21.bat PON4 62
REM call service-zte.bat PON5 64
REM call service-zte.bat PON6 60
REM call service-twgp.bat PON7 62
REM call service-zte.bat PON8 31
REM call service-g21.bat PON9 60
REM call service-zte.bat PON10 30
REM call service-zte.bat PON11 61
REM call service-g21.bat PON12 63
REM call service-twgp.bat PON13 58
REM call service-g21.bat PON14 61
REM call service-twgp.bat PON15 61
REM call service-g21.bat PON16 59
REM call service-zte.bat PON19 61
REM call service-g21.bat PON28 64 

