!#/bin/bash
cd /var/lib/jenkins/workspace/helloworld-tomcat/target
mv spring3-mvc-maven-xml-hello-world-1.0-SNAPSHOT.war helloworld.war
chmod 666 helloworld.war
scp -r helloworld.war 172.18.1.2:/usr/share/tomcat/webapps/
ssh root@172.18.1.2 "service tomcat stop"
ssh root@172.18.1.2 "service tomcat start"
