#!/bin/bash
mkdir Demo
service tomcat9 start
service tomcat9 restart
touch f1
#cd /root/arachni-1.5.1-0.5.12-linux-x86_64/bin
cd /root/arachni-1.5.1-0.5.12/bin
touch r1.html
./arachni http://18.176.249.162:8080/DemoPipelineJava-0.0.1-SNAPSHOT/ --checks=xss* >r1.html
#./arachni http://18.176.249.162:8080/DemoPipelineJava-0.0.1-SNAPSHOT/ --checks=xss* --report-save-path=1.afr
#./arachni_reporter 1.afr --reporter=html:outfile=my_report_new1.html.zip
aws s3 cp r1.html s3://arachni/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
