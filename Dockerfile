# Use openjdk as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /usr/app

# Copy the packaged JAR file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar /usr/app/demo.jar

# Expose port 8080 for the Spring Boot application
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "demo.jar"]
