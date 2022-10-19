@echo off

set CURRENT_DIR=%cd%
set WMDBBckpFolder=D:\Prem\GIT-PROJ\bce-gui\bce-gui
set TOMCAT_WEBApps_DIR=D:\Prem\CUST-INST\apache-tomcat-8.5.59\webapps

::cd %WMDBBckpFolder%
::d:

pushd %WMDBBckpFolder% && call mvn clean install && popd
copy %WMDBBckpFolder%\target\bce-gui.war %TOMCAT_WEBApps_DIR%\bce-gui.war /y



cd %CURRENT_DIR%
cd c:

dir /b