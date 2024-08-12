# Base image
FROM ubuntu:latest

# Install OpenJDK 17
RUN apt update && apt install -y openjdk-17-jdk

# Create app directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/api-gateway-0.0.1-SNAPSHOT.jar /app/api-gateway.jar

# Run the application
CMD ["java", "-jar", "api-gateway.jar"]
