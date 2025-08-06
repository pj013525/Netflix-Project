# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy JAR file into the container
COPY target/myapp.jar /app/myapp.jar

# Expose application port (example: 8080)
EXPOSE 8000

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
