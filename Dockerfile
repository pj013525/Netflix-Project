# Use Apache Tomcat base image with JDK 17
FROM tomcat:9-jdk17

# Set environment variables
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Remove default webapps (optional cleanup)
RUN rm -rf $CATALINA_HOME/webapps/*

# Copy WAR to Tomcat deployment directory
COPY target/myapp.war $CATALINA_HOME/webapps/ROOT.war

# Create a non-root user and switch to it
RUN useradd -r -u 1001 -g root -d $CATALINA_HOME -s /sbin/nologin tomcatuser \
  && chown -R tomcatuser:root $CATALINA_HOME

# Use a non-root user
USER tomcatuser

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]


