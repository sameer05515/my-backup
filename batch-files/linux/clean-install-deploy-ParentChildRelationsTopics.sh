echo "clean install ParentChildRelationsTopics.war"
cd /home/premendra/git/MyTestPrograms/ParentChildRelationsTopics
mvn clean install
cd target
echo "copying ParentChildRelationsTopics.war to tomcat"
cp /home/premendra/git/MyTestPrograms/ParentChildRelationsTopics/target/ParentChildRelationsTopics.war /home/premendra/Downloads/apache-tomcat-8.5.40/webapps
