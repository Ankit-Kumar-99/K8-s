# Use Tomcat as the runtime image
FROM tomcat:latest

# Copy the WAR file built in the previous stage to the webapps directory of Tomcat
COPY docker-java-sample-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh","run"]
