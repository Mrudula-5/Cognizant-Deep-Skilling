# Account Microservice

## Objective
Create a RESTful microservice to return account details based on account number.

## Technologies Used
- Java 17
- Spring Boot 4
- Spring Web
- Maven

## REST Endpoint

**GET**

```
/accounts/{number}
```

### Sample Request

```
http://localhost:8080/accounts/00987987973432
```

### Sample Response

```json
{
  "number": "00987987973432",
  "type": "savings",
  "balance": 234343
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
Successfully created and tested the Account Microservice.