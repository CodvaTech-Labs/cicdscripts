url=https://ctldevopsdemo.jfrog.io/artifactory/default-maven-virtual/com/javawebtutor/LoginWebApp/1.0-SNAPSHOT/LoginWebApp-1.0-SNAPSHOT.war
wget --user=nileshchakkar@gmail.com --password=Qkiosk@9031 -q -N $url
rm -rf /tmp/artifacts
mkdir /tmp/artifacts
mv LoginWebApp-1.0-SNAPSHOT.war LoginWebApp.war
cp LoginWebApp.war /tmp/artifacts
cp /tmp/artifacts/LoginWebApp.war /usr/share/tomcat/webapps
sudo systemctl stop tomcat
sudo systemctl start tomcat
