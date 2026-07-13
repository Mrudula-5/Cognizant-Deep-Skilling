# Loan Microservice

## Objective
Create a RESTful microservice to return loan details based on loan number.

## Technologies Used
- Java 17
- Spring Boot
- Spring Web
- Maven

## REST Endpoint

GET /loans/{number}

### Sample Request

http://localhost:8081/loans/H00987987972342

### Sample Response

```json
{
  "number":"H00987987972342",
  "type":"car",
  "loan":400000,
  "emi":3258,
  "tenure":18
}
```

## Build

```bash
mvn clean package
```

## Run

```bash
mvn spring-boot:run
```

## Result

Successfully created and tested the Loan Microservice.