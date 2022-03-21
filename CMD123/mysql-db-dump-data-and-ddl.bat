@echo off

set database_name=%1

set MYSQL_BIN_DIR=D:\Prem\CUST-INST\xampp1\mysql\bin
set DB_DUMP_WITH_DATA=C:\Users\premendra.kumar\Desktop\DUMP\db-files\30-Dec-2019
set DB_DUMP_WITH_DDL_ONLY=C:\Users\premendra.kumar\Desktop\DUMP\db-files\30-Dec-2019\ddl

::set DB_DUMP_WITH_DATA=C:\Users\premendra.kumar\Desktop\DUMP\18-Aug-2020
::set DB_DUMP_WITH_DDL_ONLY=C:\Users\premendra.kumar\Desktop\DUMP\18-Aug-2020\ddl

echo                =====
echo =============================================

echo [    DATABASE_NAME   ]
echo      %DATABASE_NAME%

::echo "======== DB-DUMP %DATABASE_NAME% ====================="

call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert %database_name% > %DB_DUMP_WITH_DATA%\%database_name%.sql

echo full data backup -- %DB_DUMP_WITH_DATA%\%database_name%.sql

call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data %database_name% > %DB_DUMP_WITH_DDL_ONLY%\%database_name%.sql

echo ddl backup -- %DB_DUMP_WITH_DDL_ONLY%\%database_name%.sql
