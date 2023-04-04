@echo off
set DB_DIR=E:\GIT\my-backup\31-June-2020
call mysql -u root -p bce_shopping_cart < %DB_DIR%\bce_shopping_cart.sql
call mysql -u root -p coding_ex_db < %DB_DIR%\coding_ex_db.sql
call mysql -u root -p event_logging_db < %DB_DIR%\event_logging_db.sql
call mysql -u root -p interview_mgmt < %DB_DIR%\interview_mgmt.sql
call mysql -u root -p interview_mgmt_sep_27_2019 < %DB_DIR%\interview_mgmt_sep_27_2019.sql
call mysql -u root -p interview_mgmt_test < %DB_DIR%\interview_mgmt_test.sql
call mysql -u root -p interview_mgmt_testing < %DB_DIR%\interview_mgmt_testing.sql
call mysql -u root -p interview_mgmt_test_sep_27_2019 < %DB_DIR%\interview_mgmt_test_sep_27_2019.sql
call mysql -u root -p jasper_report < %DB_DIR%\jasper_report.sql
call mysql -u root -p notes_app < %DB_DIR%\notes_app.sql
call mysql -u root -p parent_child_relation_topics < %DB_DIR%\parent_child_relation_topics.sql
call mysql -u root -p relational_db_test < %DB_DIR%\relational_db_test.sql
call mysql -u root -p relation_graph_representation < %DB_DIR%\relation_graph_representation.sql
call mysql -u root -p service_mgmt < %DB_DIR%\service_mgmt.sql
call mysql -u root -p tasksdb < %DB_DIR%\tasksdb.sql
call mysql -u root -p test < %DB_DIR%\test.sql
call mysql -u root -p topicmgmt27jul18 < %DB_DIR%\topicmgmt27jul18.sql
call mysql -u root -p topic_mgmt < %DB_DIR%\topic_mgmt.sql
call mysql -u root -p topic_mgmt_sep_27_2019 < %DB_DIR%\topic_mgmt_sep_27_2019.sql
call mysql -u root -p tutorialdb < %DB_DIR%\tutorialdb.sql
call mysql -u root -p word_meaning < %DB_DIR%\word_meaning.sql
call mysql -u root -p word_meaning_test < %DB_DIR%\word_meaning_test.sql