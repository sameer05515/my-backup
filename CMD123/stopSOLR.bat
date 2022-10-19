@echo off 

title "SOLR TERMINAL"
set current_directory=%cd%
set SOLR_HOME_BIN=D:\Prem\CUST-INST\solr-8.5.2\bin
::cd %SOLR_HOME_BIN%
::d:
ECHO "==========================================="
echo "CHECKING SOLR SERVER RUNNING STATUS"
call %SOLR_HOME_BIN%\solr status

ECHO "==========================================="
call %SOLR_HOME_BIN%\solr stop -all
ECHO "==========================================="
echo "CHECKING SOLR SERVER RUNNING STATUS"
call %SOLR_HOME_BIN%\solr status
ECHO "==========================================="
cd %current_directory% 
c: