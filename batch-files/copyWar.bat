@ECHO off
SET currentDir=%cd%
::D:
::cd D:\CUSTOM-INSTALLATIONS\apache-tomcat-8.5.47\bin\
::call shutdown.bat

::SLEEP 10
::echo sleeping for 10 seconds

copy C:\Users\premendra.kumar\git\bce-gui-30-dec\bce-gui\target\bce-gui.war D:\CUSTOM-INSTALLATIONS\apache-tomcat-8.5.47\webapps\bce-gui.war

copy C:\Users\premendra.kumar\git\bce-rest-services\RestServices\target\RestServices.war D:\CUSTOM-INSTALLATIONS\apache-tomcat-8.5.47\webapps\RestServices.war

copy C:\Users\premendra.kumar\git\db-backup\word-meaning-db-backup\target\word-meaning-db-backup-service.war D:\CUSTOM-INSTALLATIONS\apache-tomcat-8.5.47\webapps\word-meaning-db-backup-service.war

copy C:\Users\premendra.kumar\git\interview-mgmt-rest\interview-mgmt\target\interview-mgmt.war D:\CUSTOM-INSTALLATIONS\apache-tomcat-8.5.47\webapps\interview-mgmt.war

::call startup.bat
cd %currentDir%
::echo tomcat is being installed