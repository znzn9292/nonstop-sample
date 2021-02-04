FROM openjdk:8-jdk-alpine
ARG WAR_FILE=nonstop-0.0.1-SNAPSHOT.war
COPY ${WAR_FILE} nonstop.war
ENTRYPOINT ["java","-jar","-Dserver.port=8080","nonstop.war"]