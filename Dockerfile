# Use a base image with Java already installed
FROM openjdk:11-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code into the container
COPY HelloWorld.java .

# Compile the Java code
RUN javac HelloWorld.java

# Install Nginx
RUN apt-get update && \
    apt-get install -y nginx

# Remove the default Nginx configuration
RUN rm /etc/nginx/sites-enabled/default

# Copy your Nginx configuration file to the container
COPY nginx.conf /etc/nginx/sites-enabled/

# Expose the ports for Nginx (80) and your Java app (8080)
EXPOSE 80 8080

# Define the command to run when the container starts
CMD service nginx start && java HelloWorld
