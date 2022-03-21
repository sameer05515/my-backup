@echo off 

title "SOLR TERMINAL"
set current_directory=%cd%
set TOMCAT_HOME_BIN=D:\Prem\CUST-INST\apache-tomcat-8.5.56-windows-x86\bin
cd %TOMCAT_HOME_BIN%
d:
ECHO "==========================================="
::echo "CHECKING SOLR SERVER RUNNING STATUS"
::call %TOMCAT_HOME_BIN%\solr status

ECHO "==========================================="
shutdown.bat

ECHO "==========================================="
::echo "CHECKING SOLR SERVER RUNNING STATUS"
::call %SOLR_HOME_BIN%\solr status
ECHO "==========================================="
cd %current_directory% 
c: