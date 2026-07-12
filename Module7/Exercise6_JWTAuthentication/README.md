# Exercise 6 - JWT Authentication Service

## Objective
Create a Spring Boot REST service that provides an authentication endpoint secured using Spring Security.

## Technologies Used
- Java
- Spring Boot 3
- Spring Security
- Spring Web
- Maven

## Project Structure

```
src
├── main
│   ├── java
│   │   └── com.cognizant.jwt_handson
│   │       ├── controller
│   │       │      AuthenticationController.java
│   │       ├── config
│   │       │      SecurityConfig.java
│   │       └── JwtHandsonApplication.java
│   └── resources
│       └── application.properties
```

## REST Endpoint

| Method | URL |
|--------|------|
| GET | /authenticate |

## Sample Request

```
http://localhost:8090/authenticate
```

## Sample Response

```
Authentication Successful
```

## Configuration

application.properties

```properties
server.port=8090
logging.level.com.cognizant=DEBUG
```

## Build

```bash
mvn clean compile
```

## Run

```bash
mvn spring-boot:run
```

## Learning Outcomes

- Spring Security
- HTTP Basic Authentication
- SecurityFilterChain
- REST Controller
- Spring Boot Authentication