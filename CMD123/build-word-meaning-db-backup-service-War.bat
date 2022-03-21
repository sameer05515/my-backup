@echo off

set CURRENT_DIR=%cd%
set WMDBBckpFolder=D:\Prem\GIT-PROJ\smrt-bkp\word-meaning-db-backup
set TOMCAT_WEBApps_DIR=D:\Prem\CUST-INST\apache-tomcat-8.5.59\webapps

::cd %WMDBBckpFolder%
::d:

pushd %WMDBBckpFolder% && call mvn clean install && popd
copy %WMDBBckpFolder%\target\word-meaning-db-backup-service.war %TOMCAT_WEBApps_DIR%\word-meaning-db-backup-service.war /y



cd %CURRENT_DIR%
cd c:

dir /b