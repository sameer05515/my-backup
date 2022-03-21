echo "clean install ShrimadBhagwatGeeta.war"
cd /home/premendra/git/MyTestPrograms/ShrimadBhagwatGeeta
mvn clean install
cd target
echo "copying ShrimadBhagwatGeeta.war to tomcat"
cp /home/premendra/git/MyTestPrograms/ShrimadBhagwatGeeta/target/ShrimadBhagwatGeeta.war /home/premendra/Downloads/apache-tomcat-8.5.40/webapps
