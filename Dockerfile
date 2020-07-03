#install OS
FROM centos
#install java
RUN yum install -y java
#make directory structure to store temporary files
RUN mkdir -p /store
#put jar into container
ADD C:\Program Files (x86)\Jenkins\workspace\finalmaventest\target\csk-app-1.0-SNAPSHOT.jar adwordsproducer.jar
#run jar
ENTRYPOINT ["java", "-jar", "/adwordsproducer.jar"]
