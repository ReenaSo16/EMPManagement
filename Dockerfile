FROM openjdk:17-jdk-alpine
RUN apk add --no-cache libc6-compat
WORKDIR /app
COPY target/Employee_Management_System-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "app.jar"]
