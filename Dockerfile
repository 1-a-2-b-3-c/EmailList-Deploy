FROM tomcat:10.1.61-jdk24-temurin-jammy

RUN rm -rf /usr/local/tomcat/webapps/*

COPY EmailList.war /usr/local/tomcat/webapps/ROOT.war

CMD sh -c 'sed -i "s/port=\"8080\"/port=\"${PORT:-10000}\"/" /usr/local/tomcat/conf/server.xml && catalina.sh run'
