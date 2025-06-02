# Use an officialgit  OpenJDK image as the base
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy your JAR from the target folder into the container and call it app.jar
COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
