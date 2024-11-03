# Runtime stage
FROM eclipse-temurin:20-jre-alpine
EXPOSE 8080
ARG JAR_FILE=build/libs/*.jar
COPY --from=builder /app/${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]