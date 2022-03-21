echo "clean install task-mgmt.war"
cd /home/premendra/git/task-mgmt-service/task-mgmt-service
mvn clean install
cd target
echo "copying task-mgmt.war to tomcat"
cp /home/premendra/git/task-mgmt-service/task-mgmt-service/target/task-mgmt.war /home/premendra/Downloads/apache-tomcat-8.5.40/webapps
