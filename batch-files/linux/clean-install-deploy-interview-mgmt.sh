echo "clean install interview-mgmt.war"
cd /home/premendra/git/interview-mgmt-rest/interview-mgmt/
mvn clean install
cd target
echo "copying interview-mgmt.war to tomcat"
cp /home/premendra/git/interview-mgmt-rest/interview-mgmt/target/interview-mgmt.war /home/premendra/Downloads/apache-tomcat-8.5.40/webapps
