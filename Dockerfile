FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the WAR file and rename it
COPY target/myapp.war app.war

# Expose port (Spring Boot default is 8080)
EXPOSE 8080

# Run using java -jar
ENTRYPOINT ["java", "-jar", "app.war"]
