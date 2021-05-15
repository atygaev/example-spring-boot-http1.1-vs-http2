FROM openjdk:15

WORKDIR /app

COPY build/libs/*.jar .

CMD java -jar *.jar