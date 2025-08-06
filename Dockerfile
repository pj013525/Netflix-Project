# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the WAR file into the container
COPY target/myapp.war /app/target/myapp.war

# Expose application port (example: 8080)
EXPOSE 8000

# Run the JAR file
ENTRYPOINT ["java", "-jar", "myapp.war"]
