echo "clean install bce-gui.war"
cd /home/premendra/git/bce-gui/bce-gui
mvn clean install
cd target
echo "copying bce-gui.war to tomcat"
cp /home/premendra/git/bce-gui/bce-gui/target/bce-gui.war /home/premendra/Downloads/apache-tomcat-8.5.40/webapps
