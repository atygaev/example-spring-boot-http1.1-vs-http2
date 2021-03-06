# HTTP/1.1 vs HTTP/2
Demo project shows the difference between HTTP 1.1 and HTTP 2.

The project consists two Spring Boot applications.

Both applications are simple HTTP servers to serve static files (100 pictures).

The first application uses HTTP 1.1 while the another one uses HTTP 2.

Such configuration leads to HTTP 1.1 server will use several connections 
to serve the static files while the another one utilize single connection.

## Requirements
- Java 15+ (to build the project)
- Docker 20.10.6
- Docker Compose 1.29.1
- Modern browser (tested in Mozilla 88.0 and Chrome 90.0.4430.93)

## Run demo
- Build the project (command: `./gradlew bootjar` (Linux / Mac) or `gradlew.bat` (Windows))
- Start docker containers (command: `docker-compose up -d`)
- Open HTTP/1.1 site by url: https://localhost:8881 
- Open HTTP/2 site by url: https://localhost:8882

## HTTP 1.1 (several connections)
![http1 1](https://user-images.githubusercontent.com/27987608/117559360-c6245500-b0ae-11eb-8ebb-98d0115d0b39.png)

## HTTP 2 (one connection)
![http2](https://user-images.githubusercontent.com/27987608/117559383-0388e280-b0af-11eb-97ad-bdaa4d96de55.png)

## CREDITS
Source of original photo: https://www.pexels.com/photo/beautiful-botanical-coffee-decoration-374757/