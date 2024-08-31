FROM centos:7
RUN yum install java openjdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.90/bin/apache-tomcat-8.5.90.tar.gz /opt
RUN tar -xzvf apache-tomcat-8.5.90.tar.gz -C /opt/
WORKDIR /opt/apache-tomcat-8.5.90/
COPY student.war  /opt/apache-tomcat-8.5.90/webapps/
WORKDIR /opt/apache-tomcat-8.5.90/bin
EXPOSE 8080
CMD [ "./catalina.sh", "run" ]
