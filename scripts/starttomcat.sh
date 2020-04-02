#!/bin/bash
sudo service tomcat9 start
sudo service tomcat9 restart
sudo -i
cd /root/arachni-1.5.1-0.5.12-linux-x86_64/bin
touch d1.html
./arachni http://http://18.223.114.39:8080/DemoPipelineJava-0.0.1-SNAPSHOT/ --checks=xss* > d1.html
aws s3 cp d1.html s3://archni/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
