# Exercise 3 - Hello World RESTful Web Service

## Objective
Create a simple RESTful Web Service using Spring Boot that returns the message **"Hello World!!"**.

## Technologies Used
- Java 17+
- Spring Boot 3
- Spring Web
- Maven
- SLF4J Logging

## Project Structure

```
src
├── main
│   ├── java
│   │   └── com.cognizant.springlearn
│   │       ├── controller
│   │       │   └── HelloController.java
│   │       └── SpringLearnApplication.java
│   └── resources
│       └── application.properties
```

## REST API Details

| Method | URL | Response |
|--------|-----|----------|
| GET | /hello | Hello World!! |

**Complete URL**

```
http://localhost:8083/hello
```

## Controller

**Class:** `HelloController`

**Method:**

```java
@GetMapping("/hello")
public String sayHello()
```

Returns:

```
Hello World!!
```

## Logging

SLF4J logging is used.

Logs generated:

```
Start
End
```

## Configuration

`application.properties`

```properties
server.port=8083
```

## Build

```bash
mvn clean compile
```

## Run

```bash
mvn spring-boot:run
```

## Testing

### Browser

```
http://localhost:8083/hello
```

### Postman

- Method: GET
- URL: `http://localhost:8083/hello`

## Expected Output

```
Hello World!!
```

## Learning Outcomes

- Create a Spring Boot REST application.
- Implement a REST Controller using `@RestController`.
- Map HTTP GET requests using `@GetMapping`.
- Configure server port using `application.properties`.
- Use SLF4J logging.
- Test REST APIs using Browser and Postman.
