#!/bin/bash
echo "hai"
cd /etc/init.d/tomcat9
chmod 777 tomcat9
chmod 777 /etc/init.d/tomcat9
service tomcat9 start
service tomcat9 restart
touch f1
#cd /root/arachni-1.5.1-0.5.12-linux-x86_64/bin
cd /root/arachni-1.5.1-0.5.12/bin
#touch r3.html
#./arachni http://13.234.98.68:8080/DemoPipelineJava-0.0.1-SNAPSHOT/ --checks=xss* >r3.html
#./arachni http://13.234.98.68:8080/DemoPipelineJava-0.0.1-SNAPSHOT/ --checks=xss* --report-save-path=1.afr
#./arachni_reporter 1.afr --reporter=html:outfile=my_report_new1.html.zip
#aws s3 cp r3.html s3://arachni2/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
./arachni http://13.234.98.68:8080/DemoPipelineJava-0.0.1-SNAPSHOT/ --checks=xss* --report-save-path=5.afr
./arachni_reporter 5.afr --reporter=html:outfile=my_report5.html.zip
mkdir repo5
unzip my_report5.html.zip -d repo5
cd repo5
mv index.html report5.html
aws s3 cp report1.html s3://arachni2/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
 

