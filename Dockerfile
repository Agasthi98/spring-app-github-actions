# Runtime stage only
# Replace 'your-app-name.jar' with the actual JAR filename
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY build/libs/*.jar app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
