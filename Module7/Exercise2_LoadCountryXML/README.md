# Spring Core – Load Country from Spring Configuration XML

## Objective

This project demonstrates how to load a Spring Bean from an XML configuration file using the Spring IoC Container.

## Technologies Used

- Java 17
- Spring Boot 3.5.16
- Spring Core
- Maven
- SLF4J Logging

## Project Structure

```
src
├── main
│   ├── java
│   │   └── com.cognizant.springlearn
│   │       ├── SpringLearnApplication.java
│   │       └── model
│   │           └── Country.java
│   └── resources
│       ├── application.properties
│       └── country.xml
```

## Features

- Configure Spring Bean using XML.
- Load XML configuration using `ClassPathXmlApplicationContext`.
- Read bean using `getBean()`.
- Display country details.
- Log constructor and setter method execution using SLF4J.

## Country Configured

| Code | Name |
|------|------|
| IN | India |

## How to Run

1. Open the project in VS Code.
2. Open Terminal.
3. Execute:

```bash
mvn clean compile
```

4. Run the application:

```bash
mvn spring-boot:run
```

## Expected Output

```
Inside main
Inside Country Constructor.
Inside setCode()
Inside setName()
Country : Country [code=IN, name=India]
```

## Concepts Covered

- Spring IoC Container
- XML Bean Configuration
- Bean
- Property Injection
- ApplicationContext
- ClassPathXmlApplicationContext
- SLF4J Logging

## Author

Mrudula Sonawane