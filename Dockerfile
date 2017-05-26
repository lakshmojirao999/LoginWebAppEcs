FROM tomcat:latest
MAINTAINER kgv version: 0.1
COPY target/LoginWebApp.war /usr/local/tomcat/webapps/
