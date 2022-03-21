
@echo off

set CURR_DIR=%cd%


::java -jar D:\Prem\Softwares\procyon-decompiler-0.5.36.jar "C:\Users\premendra.kumar\Desktop\DUMP\jar-extraction\com.prem.bce.links.mgmt-v1.2.jar" -o "C:\Users\premendra.kumar\Desktop\DUMP\jar-extraction\link-mgmt-src"

::java -jar D:\Prem\Softwares\procyon-decompiler-0.5.36.jar "C:\Users\premendra.kumar\Desktop\DUMP\jar-extraction\file-service.jar" -o "C:\Users\premendra.kumar\Desktop\DUMP\jar-extraction\file-service-src"

java -jar D:\Prem\Softwares\procyon-decompiler-0.5.36.jar "D:\Prem\CUST-INST\apache-tomcat-8.5.56-windows-x86\webapps\jtrac.war" -o "C:\Users\premendra.kumar\Desktop\DUMP\jar-extraction\jtrac-src"

cd %CURR_DIR%
c: