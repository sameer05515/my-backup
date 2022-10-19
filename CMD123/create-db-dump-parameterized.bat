@echo off

cls

echo "======================================="
echo "to show all databases"
echo "1. connect"
echo "mysql -u <user_name> -p"
echo "show databases;"
echo "+---------------------------------+"
echo "| event-logging-db                |"
::echo "| information_schema              |"
echo "| interview-mgmt-test             |"
echo "| interview_mgmt                  |"
echo "| interview_mgmt_sep_27_2019      |"
echo "| interview_mgmt_test_sep_27_2019 |"
echo "| interview_mgmt_testing          |"
echo "| jasper-report                   |"
echo "| jtrac-mysql                     |"
echo "| jtractest                       |"
::echo "| mysql                           |"
echo "| notes_app                       |"
::echo "| performance_schema              |"
::echo "| phpmyadmin                      |"
echo "| relational-db-test              |"
echo "| service-mgmt                    |"
echo "| tasksdb                         |"
echo "| test                            |"
echo "| topic-mgmt                      |"
echo "| topic-mgmt-sep-27-2019          |"
echo "| topicmgmt27jul18                |"
echo "| tt                              |"
echo "| tutorialdb                      |"
echo "| word-meaning                    |"
echo "| word-meaning-test               |"
echo "+---------------------------------+"
echo "======================================="

call mysql-db-dump-data-and-ddl.bat event-logging-db
::call mysql-db-dump-data-and-ddl.bat information_schema
call mysql-db-dump-data-and-ddl.bat interview-mgmt-test
call mysql-db-dump-data-and-ddl.bat interview_mgmt
call mysql-db-dump-data-and-ddl.bat interview_mgmt_sep_27_2019
call mysql-db-dump-data-and-ddl.bat interview_mgmt_test_sep_27_2019
call mysql-db-dump-data-and-ddl.bat interview_mgmt_testing
call mysql-db-dump-data-and-ddl.bat jasper-report
call mysql-db-dump-data-and-ddl.bat jtrac-mysql
call mysql-db-dump-data-and-ddl.bat jtractest
::call mysql-db-dump-data-and-ddl.bat mysql
call mysql-db-dump-data-and-ddl.bat notes_app
::call mysql-db-dump-data-and-ddl.bat performance_schema
::call mysql-db-dump-data-and-ddl.bat phpmyadmin
call mysql-db-dump-data-and-ddl.bat relational-db-test
call mysql-db-dump-data-and-ddl.bat service-mgmt
call mysql-db-dump-data-and-ddl.bat tasksdb
call mysql-db-dump-data-and-ddl.bat test
call mysql-db-dump-data-and-ddl.bat topic-mgmt
call mysql-db-dump-data-and-ddl.bat topic-mgmt-sep-27-2019
call mysql-db-dump-data-and-ddl.bat topicmgmt27jul18
call mysql-db-dump-data-and-ddl.bat tt
call mysql-db-dump-data-and-ddl.bat tutorialdb
call mysql-db-dump-data-and-ddl.bat word-meaning
call mysql-db-dump-data-and-ddl.bat word-meaning-test

echo "=== DB Backup completed successfully ==="
