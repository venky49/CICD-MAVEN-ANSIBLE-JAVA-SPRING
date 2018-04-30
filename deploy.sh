!#/bin/bash
sudo ln -s /var/lib/jenkins/workspace/helloworld-tomcat/target ~/deploypath
sudo cd  /deploypath
sudo mv spring3-mvc-maven-xml-hello-world-1.0-SNAPSHOT.war helloworld.war
sudo chmod 666 helloworld.war
sudo scp -r helloworld.war 172.18.1.2:/usr/share/tomcat/webapps/
sudo ssh root@172.18.1.2 "service tomcat stop"
sudo ssh root@172.18.1.2 "service tomcat start"
