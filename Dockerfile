FROM openjdk:17

# Copies the file and forces its name to be 'app.war' inside the container
COPY Java-Login-App/target/*.war /app/app.war

EXPOSE 5555

# Now your startup command works every single time, even if your project version changes!
CMD ["java", "-jar", "/app/app.war"]