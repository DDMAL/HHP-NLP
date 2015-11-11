I. First Use Filter.java to preprocess the file.

II. Then use a command similar to the following one to perform extraction. 

sudo java -Xmx4g -XX:+UseConcMarkSweepGC -jar /var/lib/tomcat7/webapps/openie-assembly.jar --split /var/lib/tomcat7/webapps/Sadie_processed.txt /var/lib/tomcat7/webapps/Sadie_processed_extraction.txt

openie-assembly.jar is generated from openie project. More details are in:

https://github.com/knowitall/openie

III. Then Run Load.java to reformat the extraction result so that it could be read by Event Editor.
