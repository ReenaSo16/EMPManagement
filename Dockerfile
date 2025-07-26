FROM openjdk:17-jre-alpine
WORKDIR /app
COPY target/Employee_Management_System-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "app.jar"]
