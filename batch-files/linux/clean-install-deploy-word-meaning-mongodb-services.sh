echo "clean install word-meaning-mongodb-services.war"
cd /home/premendra/git/word-meaning-mongodb-services/word-meaning-mongodb-services
mvn clean install
cd target
echo "copying word-meaning-mongodb-services.war to tomcat"
cp /home/premendra/git/word-meaning-mongodb-services/word-meaning-mongodb-services/target/word-meaning-mongodb-services.war /home/premendra/Downloads/apache-tomcat-8.5.40/webapps
