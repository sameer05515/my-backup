@echo off

set CURRENT_DIR=%cd%
set WMDBBckpFolder=D:\Prem\GIT-PROJ\MyTestPrograms\ShriRamCharitManas
set TOMCAT_WEBApps_DIR=D:\Prem\CUST-INST\apache-tomcat-8.5.59\webapps

::cd %WMDBBckpFolder%
::d:

pushd %WMDBBckpFolder% && call mvn clean install && popd
copy %WMDBBckpFolder%\target\ShriRamCharitManas.war %TOMCAT_WEBApps_DIR%\ShriRamCharitManas.war /y



cd %CURRENT_DIR%
cd c:

dir /b