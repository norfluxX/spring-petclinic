# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Create a working directory in the container
WORKDIR /app

# Copy the compiled Spring Boot application (JAR file) into the working directory
COPY target/spring-petclinic-*.jar app.jar

# Open the port 8081
EXPOSE 8080

# Start the application at container startup
CMD ["java", "-jar", "-Dspring.profiles.active=mysql", "app.jar"]
