FROM openjdk:8-jdk as builder

COPY . .

RUN ./mvnw package

FROM amazoncorretto:8
EXPOSE 8080

COPY --from=builder /target .

CMD ["java", "-jar", "./docker-example-1.1.3.jar"]
