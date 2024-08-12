#Base
FROM ubuntu:latest

RUN apt update

RUN apt install -y openjdk-17-jdk

COPY api-gateway-0.0.1-SNAPSHOT.jar /app/api-gateway-0.0.1-SNAPSHOT.jar

CMD ["java", "-jar","api-gateway-0.0.1-SNAPSHOT.jar"]