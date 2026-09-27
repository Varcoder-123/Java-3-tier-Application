FROM eclipse-temurin:17-jre

RUN useradd --system --create-home --shell /usr/sbin/nologin appuser

WORKDIR /app

COPY Java-Login-App/target/*.war /app/app.war

RUN chown -R appuser:appuser /app

USER appuser

EXPOSE 5555

CMD ["java", "-jar", "/app/app.war"]
