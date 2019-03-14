#!/bin/bash
##
##
ENVIRONMENT=$1

if [ $ENVIRONMENT = "QA" ];then
sshpass -p "kavya" scp target/gamutkart.war kavya@172.17.0.3:/home/kavya/devops/apache-tomcat-8.5.38/webapps
sshpass -p "kavya" ssh kavya@172.17.0.3 "JAVA_HOME=/home/kavya/devops/jdk1.8.0_201/" /home/kavya/devops/apache-tomcat-8.5.38/bin/startup.sh

elif [ $ENVIRONMENT = "SIT" ];then
sshpass -p "kavya" scp target/gamutkart.war kavya@172.17.0.4:/home/kavya/devops/apache-tomcat-8.5.38/webapps
sshpass -p "kavya" ssh kavya@172.17.0.4 "JAVA_HOME=/home/kavya/devops/jdk1.8.0_201/" /home/kavya/devops/apache-tomcat-8.5.38/bin/startup.sh
echo "deployment has been done!"
fi
