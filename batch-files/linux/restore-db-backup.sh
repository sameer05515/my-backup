echo "information_schema     ===="
echo  "==== interview-mgmt-test    ===="
echo "==== interview_mgmt         ===="
echo "==== interview_mgmt_testing ===="
echo "==== jasper-report          ===="
echo "==== mysql                  ===="
echo "==== performance_schema     ===="
echo "==== phpmyadmin             ===="
echo "==== relational-db-test     ===="
echo "==== service-mgmt           ===="
echo "==== test                   ===="
echo "==== topic-mgmt             ===="
echo "==== tutorialdb             ===="
echo "==== word-meaning           ===="
echo "==== word-meaning-test ===="
echo "==== tasksdb                   ===="
echo "==== event-logging-db                   ===="--------

echo "==== interview_mgmt_sep_27_2019                   ===="
echo "==== interview_mgmt_test_sep_27_2019                   ===="
echo "==== notes_app                   ===="
echo "==== topic-mgmt-sep-27-2019                   ===="
echo "==== topicmgmt27jul18                   ===="
echo "==== bce-shopping-cart                   ===="
echo "==== relation-graph-representation                   ===="

/opt/lampp/bin/mysql -u root -p event-logging-db < /home/premendra/git/db-files/30-Dec-2019/event-logging-db.sql
/opt/lampp/bin/mysql -u root -p interview-mgmt-test < /home/premendra/git/db-files/30-Dec-2019/interview-mgmt-test.sql
/opt/lampp/bin/mysql -u root -p interview_mgmt < /home/premendra/git/db-files/30-Dec-2019/interview_mgmt.sql
/opt/lampp/bin/mysql -u root -p interview_mgmt_sep_27_2019 < /home/premendra/git/db-files/30-Dec-2019/interview_mgmt_sep_27_2019.sql
/opt/lampp/bin/mysql -u root -p interview_mgmt_test_sep_27_2019 < /home/premendra/git/db-files/30-Dec-2019/interview_mgmt_test_sep_27_2019.sql
/opt/lampp/bin/mysql -u root -p interview_mgmt_testing < /home/premendra/git/db-files/30-Dec-2019/interview_mgmt_testing.sql
/opt/lampp/bin/mysql -u root -p jasper-report < /home/premendra/git/db-files/30-Dec-2019/jasper-report.sql
/opt/lampp/bin/mysql -u root -p jtrac-mysql < /home/premendra/git/db-files/30-Dec-2019/jtrac-mysql.sql
/opt/lampp/bin/mysql -u root -p jtractest < /home/premendra/git/db-files/30-Dec-2019/jtractest.sql
/opt/lampp/bin/mysql -u root -p notes_app < /home/premendra/git/db-files/30-Dec-2019/notes_app.sql
/opt/lampp/bin/mysql -u root -p relational-db-test < /home/premendra/git/db-files/30-Dec-2019/relational-db-test.sql
/opt/lampp/bin/mysql -u root -p service-mgmt < /home/premendra/git/db-files/30-Dec-2019/service-mgmt.sql
/opt/lampp/bin/mysql -u root -p tasksdb < /home/premendra/git/db-files/30-Dec-2019/tasksdb.sql
/opt/lampp/bin/mysql -u root -p test < /home/premendra/git/db-files/30-Dec-2019/test.sql
/opt/lampp/bin/mysql -u root -p topic-mgmt < /home/premendra/git/db-files/30-Dec-2019/topic-mgmt.sql
/opt/lampp/bin/mysql -u root -p topic-mgmt-sep-27-2019 < /home/premendra/git/db-files/30-Dec-2019/topic-mgmt-sep-27-2019.sql
/opt/lampp/bin/mysql -u root -p topicmgmt27jul18 < /home/premendra/git/db-files/30-Dec-2019/topicmgmt27jul18.sql
/opt/lampp/bin/mysql -u root -p tt < /home/premendra/git/db-files/30-Dec-2019/tt.sql
/opt/lampp/bin/mysql -u root -p tutorialdb < /home/premendra/git/db-files/30-Dec-2019/tutorialdb.sql
/opt/lampp/bin/mysql -u root -p word-meaning < /home/premendra/git/db-files/30-Dec-2019/word-meaning.sql
/opt/lampp/bin/mysql -u root -p word-meaning-test < /home/premendra/git/db-files/30-Dec-2019/word-meaning-test.sql
/opt/lampp/bin/mysql -u root -p relation-graph-representation < /home/premendra/git/db-files/30-Dec-2019/relation-graph-representation.sql
