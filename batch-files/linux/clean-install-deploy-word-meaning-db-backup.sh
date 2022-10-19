echo "clean install word-meaning-db-backup-service.war"
cd /home/premendra/git/db-backup/word-meaning-db-backup/
mvn clean install
cd target
echo "copying word-meaning-db-backup-service.war to tomcat"
cp /home/premendra/git/db-backup/word-meaning-db-backup/target/word-meaning-db-backup-service.war /home/premendra/Downloads/apache-tomcat-8.5.40/webapps
