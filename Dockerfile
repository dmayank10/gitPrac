# Use an official OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file into the container
COPY target/gitPrac-1.0.0.jar app.jar

# Expose the port that your Spring Boot app will run on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
