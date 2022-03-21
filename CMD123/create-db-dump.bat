@echo off

cls

set MYSQL_BIN_DIR=D:\Prem\CUST-INST\mariadb-10.3.13-winx64\bin
:: set DB_DUMP_WITH_DATA=C:\Users\premendra.kumar\Desktop\db-dump
:: set DB_DUMP_WITH_DDL_ONLY=C:\Users\premendra.kumar\Desktop\db-dump\ddl

set DB_DUMP_WITH_DATA=D:\Prem\GIT-PROJ\file-bckp\31-June-2020
set DB_DUMP_WITH_DDL_ONLY=D:\Prem\GIT-PROJ\file-bckp\31-June-2020\ddl

echo "information_schema     ===="
echo  "==== interview_mgmt_test    ===="
echo "==== interview_mgmt         ===="
echo "==== interview_mgmt_testing ===="
echo "==== jasper_report          ===="
echo "==== mysql                  ===="
echo "==== performance_schema     ===="
echo "==== phpmyadmin             ===="
echo "==== relational_db_test     ===="
echo "==== service_mgmt           ===="
echo "==== test                   ===="
echo "==== topic_mgmt             ===="
echo "==== tutorialdb             ===="
echo "==== word_meaning           ===="
echo "==== word_meaning_test ===="
echo "==== tasksdb                   ===="
echo "==== event_logging_db                   ===="

echo "==== interview_mgmt_sep_27_2019                   ===="
echo "==== interview_mgmt_test_sep_27_2019                   ===="
echo "==== notes_app                   ===="
echo "==== topic_mgmt_sep_27_2019                   ===="
echo "==== topicmgmt27jul18                   ===="
echo "==== bce_shopping_cart                   ===="
echo "==== relation_graph_representation                   ===="
echo "==== parent_child_relation_topics                   ===="
echo "==== coding_ex_db                   ===="


echo "======== DB_DUMP interview_mgmt_test ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert interview_mgmt_test > %DB_DUMP_WITH_DATA%\interview_mgmt_test.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data interview_mgmt_test > %DB_DUMP_WITH_DDL_ONLY%\interview_mgmt_test.sql

echo "======== DB-DUMP interview_mgmt ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert interview_mgmt > %DB_DUMP_WITH_DATA%\interview_mgmt.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data interview_mgmt > %DB_DUMP_WITH_DDL_ONLY%\interview_mgmt.sql

echo "======== DB-DUMP interview_mgmt_testing ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert interview_mgmt_testing > %DB_DUMP_WITH_DATA%\interview_mgmt_testing.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data interview_mgmt_testing > %DB_DUMP_WITH_DDL_ONLY%\interview_mgmt_testing.sql

echo "======== DB-DUMP jasper_report ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert jasper_report > %DB_DUMP_WITH_DATA%\jasper_report.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data jasper_report > %DB_DUMP_WITH_DDL_ONLY%\jasper_report.sql

echo "======== DB-DUMP relational_db_test ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert relational_db_test  > %DB_DUMP_WITH_DATA%\relational_db_test.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data relational_db_test > %DB_DUMP_WITH_DDL_ONLY%\relational_db_test.sql

echo "======== DB-DUMP service_mgmt ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert service_mgmt > %DB_DUMP_WITH_DATA%\service_mgmt.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data service_mgmt > %DB_DUMP_WITH_DDL_ONLY%\service_mgmt.sql

echo "======== DB-DUMP test ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert test > %DB_DUMP_WITH_DATA%\test.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data test > %DB_DUMP_WITH_DDL_ONLY%\test.sql

echo "======== DB-DUMP topic_mgmt ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert topic_mgmt > %DB_DUMP_WITH_DATA%\topic_mgmt.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data topic_mgmt > %DB_DUMP_WITH_DDL_ONLY%\topic_mgmt.sql

echo "======== DB-DUMP tutorialdb ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert tutorialdb > %DB_DUMP_WITH_DATA%\tutorialdb.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data tutorialdb > %DB_DUMP_WITH_DDL_ONLY%\tutorialdb.sql

echo "======== DB-DUMP word_meaning ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert word_meaning > %DB_DUMP_WITH_DATA%\word_meaning.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data word_meaning > %DB_DUMP_WITH_DDL_ONLY%\word_meaning.sql


echo "======== DB-DUMP word_meaning_test ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert word_meaning_test > %DB_DUMP_WITH_DATA%\word_meaning_test.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data word_meaning_test > %DB_DUMP_WITH_DDL_ONLY%\word_meaning_test.sql

echo "======== DB-DUMP tasksdb ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert tasksdb > %DB_DUMP_WITH_DATA%\tasksdb.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data tasksdb > %DB_DUMP_WITH_DDL_ONLY%\tasksdb.sql

echo "======== DB-DUMP event_logging_db ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert event_logging_db > %DB_DUMP_WITH_DATA%\event_logging_db.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data event_logging_db > %DB_DUMP_WITH_DDL_ONLY%\event_logging_db.sql


::=========================
echo "======== DB-DUMP interview_mgmt_sep_27_2019 ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert interview_mgmt_sep_27_2019 > %DB_DUMP_WITH_DATA%\interview_mgmt_sep_27_2019.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data interview_mgmt_sep_27_2019 > %DB_DUMP_WITH_DDL_ONLY%\interview_mgmt_sep_27_2019.sql

echo "======== DB-DUMP interview_mgmt_test_sep_27_2019 ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert interview_mgmt_test_sep_27_2019 > %DB_DUMP_WITH_DATA%\interview_mgmt_test_sep_27_2019.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data interview_mgmt_test_sep_27_2019 > %DB_DUMP_WITH_DDL_ONLY%\interview_mgmt_test_sep_27_2019.sql

echo "======== DB-DUMP notes_app ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert notes_app > %DB_DUMP_WITH_DATA%\notes_app.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data notes_app > %DB_DUMP_WITH_DDL_ONLY%\notes_app.sql

echo "======== DB-DUMP topic_mgmt_sep_27_2019 ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert topic_mgmt_sep_27_2019 > %DB_DUMP_WITH_DATA%\topic_mgmt_sep_27_2019.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data topic_mgmt_sep_27_2019 > %DB_DUMP_WITH_DDL_ONLY%\topic_mgmt_sep_27_2019.sql

echo "======== DB-DUMP topicmgmt27jul18 ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert topicmgmt27jul18 > %DB_DUMP_WITH_DATA%\topicmgmt27jul18.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data topicmgmt27jul18 > %DB_DUMP_WITH_DDL_ONLY%\topicmgmt27jul18.sql


echo "======== DB-DUMP bce_shopping_cart ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert bce_shopping_cart > %DB_DUMP_WITH_DATA%\bce_shopping_cart.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data bce_shopping_cart > %DB_DUMP_WITH_DDL_ONLY%\bce_shopping_cart.sql

echo "======== DB-DUMP relation_graph_representation ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert relation_graph_representation > %DB_DUMP_WITH_DATA%\relation_graph_representation.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data relation_graph_representation > %DB_DUMP_WITH_DDL_ONLY%\relation_graph_representation.sql

echo "======== DB-DUMP parent_child_relation_topics ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert parent_child_relation_topics > %DB_DUMP_WITH_DATA%\parent_child_relation_topics.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data parent_child_relation_topics > %DB_DUMP_WITH_DDL_ONLY%\parent_child_relation_topics.sql

echo "======== DB-DUMP coding_ex_db ====================="
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --skip-extended-insert coding_ex_db > %DB_DUMP_WITH_DATA%\coding_ex_db.sql
call %MYSQL_BIN_DIR%\mysqldump -u root -p --routines --no-data coding_ex_db > %DB_DUMP_WITH_DDL_ONLY%\coding_ex_db.sql


echo "=== DB Backup completed successfully ==="