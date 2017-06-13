FROM fishead/docker-tomcat-maven
MAINTAINER agent@cicd.com
RUN mvn clean install
COPY target/LoginWebApp.war /usr/local/tomcat/webapps/.
