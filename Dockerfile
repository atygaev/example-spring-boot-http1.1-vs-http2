FROM openjdk:15

WORKDIR /app

COPY gradlew .
COPY settings.gradle .
COPY build.gradle .
COPY src src
COPY gradle gradle

RUN ./gradlew clean bootjar

CMD java -jar build/libs/*.jar