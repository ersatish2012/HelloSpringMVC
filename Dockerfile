FROM tomcat:8.0-jre8

ADD target/spring.war /usr/local/tomcat/webapps/spring.war
RUN mv /usr/local/tomcat/webapps/ROOT /usr/local/tomcat/webapps/console/
RUN mv /usr/local/tomcat/webapps/spring.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh","run"]
