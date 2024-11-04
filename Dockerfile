# Runtime stage
# Change this to the actual path of your JAR file if it's not in the same directory as your Dockerfile
FROM eclipse-temurin:20-jre-alpine
WORKDIR /app
ARG JAR_FILE=build/libs/*.jar
COPY --from=builder /app/${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
