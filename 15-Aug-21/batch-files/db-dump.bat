@echo off

set CURR_DIR=%cd%
cd D:\DATA\CUSTOM-INSTALLATION\mariadb-10.3.13-winx64\bin
D:

echo "======== OnlineStore DB========"
mysqldump --user=root --password --lock-tables --routines --databases OnlineStore > D:\DATA\batch-files\DB-DUMP\OnlineStore.sql
mysqldump --user=root --password --lock-tables --routines --no-data --databases OnlineStore > D:\DATA\batch-files\DB-DUMP\ddl\OnlineStore.sql

echo "======== classicmodels DB========"
mysqldump --user=root --password --lock-tables --routines --databases classicmodels > D:\DATA\batch-files\DB-DUMP\classicmodels.sql
mysqldump --user=root --password --lock-tables --routines --no-data --databases classicmodels > D:\DATA\batch-files\DB-DUMP\ddl\classicmodels.sql

echo "======== tasksdb DB========"
mysqldump --user=root --password --lock-tables --routines --databases tasksdb > D:\DATA\batch-files\DB-DUMP\tasksdb.sql
mysqldump --user=root --password --lock-tables --routines --no-data --databases tasksdb > D:\DATA\batch-files\DB-DUMP\ddl\tasksdb.sql



echo "db backup done successfully!!"
cd %CURR_DIR%