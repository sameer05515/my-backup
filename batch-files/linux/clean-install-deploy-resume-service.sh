echo "clean install Resume.war"
cd /home/premendra/git/MyTestPrograms/Resume
mvn clean install
cd target
echo "copying Resume.war to tomcat"
cp /home/premendra/git/MyTestPrograms/Resume/target/Resume.war /home/premendra/Downloads/apache-tomcat-8.5.40/webapps
