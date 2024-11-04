# Runtime stage only
# Replace 'your-app-name.jar' with the actual JAR filename
FROM eclipse-temurin:20-jre-alpine
WORKDIR /app
COPY build/libs/github-actions-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
