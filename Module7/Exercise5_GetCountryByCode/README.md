# Exercise 5 - REST Get Country by Country Code

## Objective
Create a RESTful Web Service that returns country details based on the country code provided in the URL.

## Technologies Used
- Java
- Spring Boot 3
- Spring Web
- Spring Core
- Maven
- SLF4J Logging

## REST API

| Method | URL | Description |
|--------|-----|-------------|
| GET | /countries/{code} | Returns country details based on country code |

### Sample Request

```
http://localhost:8083/countries/in
```

### Sample Response

```json
{
  "code": "IN",
  "name": "India"
}
```

## Features

- REST API using `@GetMapping`
- Uses `@PathVariable`
- Retrieves country list from `country.xml`
- Performs case-insensitive country code matching
- Returns matching country as JSON

## Build

```bash
mvn clean compile
```

## Run

```bash
mvn spring-boot:run
```

## Learning Outcomes

- Understand `@PathVariable`
- Implement Service Layer
- Read collections from Spring XML configuration
- Return JSON responses using Spring Boot
- Build REST APIs with Spring MVC