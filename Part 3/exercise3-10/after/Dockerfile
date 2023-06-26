FROM openjdk:8-jdk as builder

COPY . .

RUN ./mvnw package

FROM amazoncorretto:8-alpine-jre
EXPOSE 8080

COPY --from=builder /target .

RUN adduser -D appuser
USER appuser

CMD ["java", "-jar", "./docker-example-1.1.3.jar"]
