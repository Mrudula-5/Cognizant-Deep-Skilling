# Exercise 4 - REST Country Web Service

## Objective
Develop a RESTful Web Service using Spring Boot that returns the details of India by loading the Country bean from a Spring XML configuration file.

## Technologies Used
- Java 17+
- Spring Boot 3
- Spring Web
- Spring Core
- Maven
- SLF4J Logging

## Project Structure

```
src
├── main
│   ├── java
│   │   └── com.cognizant.springlearn
│   │       ├── controller
│   │       │   ├── HelloController.java
│   │       │   └── CountryController.java
│   │       ├── model
│   │       │   └── Country.java
│   │       └── SpringLearnApplication.java
│   └── resources
│       ├── application.properties
│       └── country.xml
```

## REST API Details

| Method | URL | Response |
|--------|-----|----------|
| GET | /country | Country Details in JSON |

### Request URL

```
http://localhost:8083/country
```

### Sample Response

```json
{
    "code": "IN",
    "name": "India"
}
```

## Implementation

- Created `CountryController` using `@RestController`.
- Used `@RequestMapping("/country")`.
- Loaded `Country` bean from `country.xml`.
- Returned the `Country` object.
- Spring Boot automatically converted the Java object into JSON using Jackson.
- Added SLF4J logging for Start and End of the method.

## Configuration

### application.properties

```properties
server.port=8083
logging.level.com.cognizant=DEBUG
```

### country.xml

Configured the Country bean with:

- Code: IN
- Name: India

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
http://localhost:8083/country
```

### Postman

- Method: GET
- URL: `http://localhost:8083/country`

## Expected Output

```json
{
    "code": "IN",
    "name": "India"
}
```

## Logs

```
Start
End
```

## Learning Outcomes

- Understand REST Controllers in Spring Boot.
- Use `@RequestMapping` for REST endpoints.
- Load Spring beans from XML configuration.
- Return Java objects as JSON responses.
- Learn automatic JSON serialization using Jackson.
- Test REST APIs using Browser and Postman.
- Use SLF4J logging for debugging.