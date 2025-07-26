# Build stage
FROM openjdk:17-jdk-alpine AS builder
WORKDIR /app
COPY pom.xml mvnw ./
COPY src ./src
COPY .mvn ./.mvn
RUN apk add --no-cache maven && mvn clean package -DskipTests

# Runtime stage
FROM openjdk:17-jre-alpine
WORKDIR /app
COPY --from=builder /app/target/Employee_Management_System-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "app.jar"]
