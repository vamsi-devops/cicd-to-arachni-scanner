#!/bin/bash
mkdir bbau
service tomcat9 start
service tomcat9 restart
touch f1
cd /root/arachni-1.5.1-0.5.12-linux-x86_64/bin
touch d1.html
./arachni http://http://18.223.114.39:8080/DemoPipelineJava-0.0.1-SNAPSHOT/ --checks=xss* --report-save-path=1.afr
aws s3 cp d1.html s3://archni/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
