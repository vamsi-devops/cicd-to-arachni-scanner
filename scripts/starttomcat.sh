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
abc=`ls -la | grep report_latest.afr`
if [[ $abc = report_latest.afr ]]
then
rm -rf c.afr
else
echo "file is not there generate report"
fi
./arachni http://13.234.98.68:8080/DemoPipelineJava-0.0.1-SNAPSHOT/ --checks=xss* --report-save-path=report_latest.afr
abc=`ls -la | grep report_latest.html.zip`
if [[ $abc = report_latest.html.zip ]]
then
rm -rf report_latest.html.zip
else
echo "file is not there generate report"
fi
./arachni_reporter report_latest.afr --reporter=html:outfile=report_latest.html.zip
if [[ $abc = report ]]
then
rm -rf report
else
echo "file is not there create directory"
fi
mkdir report
unzip report_latest.html.zip -d report
cd report
aws s3 cp report5.html s3://arachni2/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
 

