FROM fishead/docker-tomcat-maven
MAINTAINER agent@cicd.com
RUN $CATALINA_HOME/bin/catalina.sh stop
COPY target/LoginWebApp.war /usr/local/tomcat/webapps/.
RUN $CATALINA_HOME/bin/catalina.sh start
