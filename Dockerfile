FROM fishead/docker-tomcat-maven
MAINTAINER agent@cicd.com
COPY target/LoginWebApp.war /usr/local/tomcat/webapps/.
