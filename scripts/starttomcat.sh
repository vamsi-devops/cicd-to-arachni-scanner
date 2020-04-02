#!/bin/bash
sudo service tomcat9 start
sudo service tomcat9 restart
cd arachni-1.5.1-0.5.12-linux-x86_64/bin
touch f4.html
./arachni http://http://18.223.114.39:8080/DemoPipelineJava-0.0.1-SNAPSHOT/ --checks=xss* > f4.html
aws s3 cp f4.html s3://archni/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
