@echo off

clear

MYSQL_BIN_DIR=/opt/lampp/bin
#:: set DB_DUMP_WITH_DATA=C:\Users\premendra.kumar\Desktop\db-dump
#:: set DB_DUMP_WITH_DDL_ONLY=C:\Users\premendra.kumar\Desktop\db-dump\ddl

DB_DUMP_WITH_DATA=/home/premendra/git/file-bckp/linux-db-backup
DB_DUMP_WITH_DDL_ONLY=/home/premendra/git/file-bckp/linux-db-backup/ddl


#+--------------------+
#| Database           |
#+--------------------+
#| information_schema |
#| interview_mgmt     |
#| jtrac-mysql        |
#| mysql              |
#| performance_schema |
#| phpmyadmin         |
#| test               |
#| topic-mgmt         |
#| word-meaning       |
#| word-meaning-test  |
#| resume_db |
#|parent_child_relation_topics|
#+--------------------+
#10 rows in set (0.00 sec)



echo "======== DB-DUMP CODING_EX_DB ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert coding_ex_db > $DB_DUMP_WITH_DATA/coding_ex_db.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data coding_ex_db > $DB_DUMP_WITH_DDL_ONLY/coding_ex_db.sql

echo "======== DB-DUMP EVENT-LOGGING-DB ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert event-logging-db > $DB_DUMP_WITH_DATA/event-logging-db.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data event-logging-db > $DB_DUMP_WITH_DDL_ONLY/event-logging-db.sql

echo "======== DB-DUMP INTERVIEW-MGMT-TEST ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert interview-mgmt-test > $DB_DUMP_WITH_DATA/interview-mgmt-test.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data interview-mgmt-test > $DB_DUMP_WITH_DDL_ONLY/interview-mgmt-test.sql

echo "======== DB-DUMP INTERVIEW_MGMT ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert interview_mgmt > $DB_DUMP_WITH_DATA/interview_mgmt.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data interview_mgmt > $DB_DUMP_WITH_DDL_ONLY/interview_mgmt.sql

echo "======== DB-DUMP INTERVIEW_MGMT_SEP_27_2019 ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert interview_mgmt_sep_27_2019 > $DB_DUMP_WITH_DATA/interview_mgmt_sep_27_2019.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data interview_mgmt_sep_27_2019 > $DB_DUMP_WITH_DDL_ONLY/interview_mgmt_sep_27_2019.sql

echo "======== DB-DUMP INTERVIEW_MGMT_TEST_SEP_27_2019 ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert interview_mgmt_test_sep_27_2019 > $DB_DUMP_WITH_DATA/interview_mgmt_test_sep_27_2019.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data interview_mgmt_test_sep_27_2019 > $DB_DUMP_WITH_DDL_ONLY/interview_mgmt_test_sep_27_2019.sql

echo "======== DB-DUMP INTERVIEW_MGMT_TESTING ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert interview_mgmt_testing > $DB_DUMP_WITH_DATA/interview_mgmt_testing.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data interview_mgmt_testing > $DB_DUMP_WITH_DDL_ONLY/interview_mgmt_testing.sql

echo "======== DB-DUMP JASPER-REPORT ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert jasper-report > $DB_DUMP_WITH_DATA/jasper-report.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data jasper-report > $DB_DUMP_WITH_DDL_ONLY/jasper-report.sql

echo "======== DB-DUMP JTRAC-MYSQL ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert jtrac-mysql > $DB_DUMP_WITH_DATA/jtrac-mysql.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data jtrac-mysql > $DB_DUMP_WITH_DDL_ONLY/jtrac-mysql.sql

echo "======== DB-DUMP JTRACTEST ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert jtractest > $DB_DUMP_WITH_DATA/jtractest.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data jtractest > $DB_DUMP_WITH_DDL_ONLY/jtractest.sql

echo "======== DB-DUMP NOTES_APP ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert notes_app > $DB_DUMP_WITH_DATA/notes_app.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data notes_app > $DB_DUMP_WITH_DDL_ONLY/notes_app.sql

echo "======== DB-DUMP PERFORMANCE_SCHEMA ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert performance_schema > $DB_DUMP_WITH_DATA/performance_schema.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data performance_schema > $DB_DUMP_WITH_DDL_ONLY/performance_schema.sql

echo "======== DB-DUMP RELATION-GRAPH-REPRESENTATION ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert relation-graph-representation > $DB_DUMP_WITH_DATA/relation-graph-representation.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data relation-graph-representation > $DB_DUMP_WITH_DDL_ONLY/relation-graph-representation.sql

echo "======== DB-DUMP RELATIONAL-DB-TEST ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert relational-db-test > $DB_DUMP_WITH_DATA/relational-db-test.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data relational-db-test > $DB_DUMP_WITH_DDL_ONLY/relational-db-test.sql

echo "======== DB-DUMP SERVICE-MGMT ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert service-mgmt > $DB_DUMP_WITH_DATA/service-mgmt.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data service-mgmt > $DB_DUMP_WITH_DDL_ONLY/service-mgmt.sql

echo "======== DB-DUMP TASKSDB ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert tasksdb > $DB_DUMP_WITH_DATA/tasksdb.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data tasksdb > $DB_DUMP_WITH_DDL_ONLY/tasksdb.sql

echo "======== DB-DUMP TEST ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert test > $DB_DUMP_WITH_DATA/test.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data test > $DB_DUMP_WITH_DDL_ONLY/test.sql

echo "======== DB-DUMP TOPIC-MGMT ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert topic-mgmt > $DB_DUMP_WITH_DATA/topic-mgmt.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data topic-mgmt > $DB_DUMP_WITH_DDL_ONLY/topic-mgmt.sql

echo "======== DB-DUMP TOPIC-MGMT-SEP-27-2019 ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert topic-mgmt-sep-27-2019 > $DB_DUMP_WITH_DATA/topic-mgmt-sep-27-2019.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data topic-mgmt-sep-27-2019 > $DB_DUMP_WITH_DDL_ONLY/topic-mgmt-sep-27-2019.sql

echo "======== DB-DUMP TOPICMGMT27JUL18 ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert topicmgmt27jul18 > $DB_DUMP_WITH_DATA/topicmgmt27jul18.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data topicmgmt27jul18 > $DB_DUMP_WITH_DDL_ONLY/topicmgmt27jul18.sql

echo "======== DB-DUMP TT ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert tt > $DB_DUMP_WITH_DATA/tt.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data tt > $DB_DUMP_WITH_DDL_ONLY/tt.sql

echo "======== DB-DUMP TUTORIALDB ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert tutorialdb > $DB_DUMP_WITH_DATA/tutorialdb.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data tutorialdb > $DB_DUMP_WITH_DDL_ONLY/tutorialdb.sql

echo "======== DB-DUMP WORD-MEANING ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert word-meaning > $DB_DUMP_WITH_DATA/word-meaning.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data word-meaning > $DB_DUMP_WITH_DDL_ONLY/word-meaning.sql

echo "======== DB-DUMP WORD-MEANING-TEST ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert word-meaning-test > $DB_DUMP_WITH_DATA/word-meaning-test.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data word-meaning-test > $DB_DUMP_WITH_DDL_ONLY/word-meaning-test.sql

echo "======== DB-DUMP resume_db ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert resume_db > $DB_DUMP_WITH_DATA/resume_db.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data resume_db > $DB_DUMP_WITH_DDL_ONLY/resume_db.sql

echo "======== DB-DUMP call_details ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert call_details > $DB_DUMP_WITH_DATA/call_details.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data call_details > $DB_DUMP_WITH_DDL_ONLY/call_details.sql


echo "======== DB-DUMP parent_child_relation_topics ====================="
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --skip-extended-insert parent_child_relation_topics > $DB_DUMP_WITH_DATA/parent_child_relation_topics.sql
$MYSQL_BIN_DIR/mysqldump -u root -p --routines --no-data parent_child_relation_topics > $DB_DUMP_WITH_DDL_ONLY/parent_child_relation_topics.sql

echo "Dump completed successfully!"
