FROM openjdk:8

WORKDIR /app

COPY target/*.jar /app/
EXPOSE 8080

CMD ["java", "-jar", "api-gateway-service-0.0.1-SNAPSHOT.jar"]
