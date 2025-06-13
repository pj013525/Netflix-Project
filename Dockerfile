# Use official Tomcat image
FROM tomcat:9.0

# Remove default webapps to keep it clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file to tomcat webapps folder
COPY myapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 9000

# Start Tomcat
CMD ["catalina.sh", "run"]
