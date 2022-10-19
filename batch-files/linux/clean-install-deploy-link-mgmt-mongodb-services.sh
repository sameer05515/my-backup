echo "clean install link-mgmt-mongodb-services.war"
cd /home/premendra/git/link-mgmt-mongodb-services/LinkMGMTMongoDBServices
mvn clean install
cd target
echo "copying link-mgmt-mongodb-services.war to tomcat"
cp /home/premendra/git/link-mgmt-mongodb-services/LinkMGMTMongoDBServices/target/link-mgmt-mongodb-services.war /home/premendra/Downloads/apache-tomcat-8.5.40/webapps
