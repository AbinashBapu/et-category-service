FROM openjdk:26-trixie

# Set environment variables (default, can be overridden at runtime)
ENV JAVA_OPTS=""
ENV APP_HOME=/app


# Create app directory
WORKDIR $APP_HOME

# Copy jar file (make sure it's built already, e.g., with Maven or Gradle)
COPY target/*.jar app.jar

# Expose application port (change as needed)
EXPOSE 8080

# Run the application
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
