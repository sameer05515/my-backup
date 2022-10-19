@echo off

cls

set MYSQL_BIN_DIR=D:\DATA\CUSTOM-INSTALLATION\mariadb-10.3.13-winx64\bin
:: set DB_DUMP_WITH_DATA=C:\Users\premendra.kumar\Desktop\db-dump
:: set DB_DUMP_WITH_DDL_ONLY=C:\Users\premendra.kumar\Desktop\db-dump\ddl

set DB_DUMP_WITH_DATA=D:\DATA\git-hub-sam\file-bckp\15-Aug-21\batch-files\DB-DUMP
set DB_DUMP_WITH_DDL_ONLY=D:\DATA\git-hub-sam\file-bckp\15-Aug-21\batch-files\DB-DUMP\ddl

echo "======================================================="
echo "information_schema     ===="
echo  "==== classicmodels    ===="
echo "==== onlinestore         ===="
echo "==== parent_child_relation_topics ===="
echo "==== tasksdb          ===="
echo "==== test                  ===="
echo "==== word_meaning     ===="
echo "======================================================="


echo "======== DB_DUMP information_schema ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert information_schema > %DB_DUMP_WITH_DATA%\information_schema.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data information_schema > %DB_DUMP_WITH_DDL_ONLY%\information_schema.sql

echo "======== DB-DUMP classicmodels ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert classicmodels > %DB_DUMP_WITH_DATA%\classicmodels.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data classicmodels > %DB_DUMP_WITH_DDL_ONLY%\classicmodels.sql

echo "======== DB-DUMP onlinestore ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert onlinestore > %DB_DUMP_WITH_DATA%\onlinestore.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data onlinestore > %DB_DUMP_WITH_DDL_ONLY%\onlinestore.sql

echo "======== DB-DUMP parent_child_relation_topics ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert parent_child_relation_topics > %DB_DUMP_WITH_DATA%\parent_child_relation_topics.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data parent_child_relation_topics > %DB_DUMP_WITH_DDL_ONLY%\parent_child_relation_topics.sql

echo "======== DB-DUMP test ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert test  > %DB_DUMP_WITH_DATA%\test.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data test > %DB_DUMP_WITH_DDL_ONLY%\test.sql

echo "======== DB-DUMP word_meaning ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert word_meaning > %DB_DUMP_WITH_DATA%\word_meaning.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data word_meaning > %DB_DUMP_WITH_DDL_ONLY%\word_meaning.sql

echo "======== DB-DUMP tasksdb ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert tasksdb > %DB_DUMP_WITH_DATA%\tasksdb.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data tasksdb > %DB_DUMP_WITH_DDL_ONLY%\tasksdb.sql


echo "=== DB Backup completed successfully ==="