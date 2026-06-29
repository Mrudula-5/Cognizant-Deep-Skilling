# Hands-on 4: Difference between JPA, Hibernate and Spring Data JPA

## Objective

To understand the difference between Java Persistence API (JPA), Hibernate, and Spring Data JPA.

---

## 1. Java Persistence API (JPA)

* JPA stands for **Java Persistence API**.
* It is a **Java Specification (JSR 338)** for Object Relational Mapping (ORM).
* It defines standard APIs for persisting, reading, and managing data.
* JPA does not provide any implementation.
* Hibernate is one of the most popular implementations of JPA.

### Advantages

* Standard API for ORM.
* Database independent.
* Portable across different JPA providers.

---

## 2. Hibernate

* Hibernate is an **ORM (Object Relational Mapping)** framework.
* It is an implementation of the JPA specification.
* It maps Java objects to database tables.
* It provides features such as caching, lazy loading, transaction management, and HQL.

### Advantages

* Reduces JDBC boilerplate code.
* Automatic table mapping.
* Supports caching.
* Database independent.

---

## 3. Spring Data JPA

* Spring Data JPA is built on top of JPA.
* It simplifies database operations by reducing boilerplate code.
* It provides built-in CRUD methods.
* It automatically implements repository interfaces.
* Hibernate is commonly used as the JPA provider behind Spring Data JPA.

### Advantages

* Less code.
* Automatic CRUD operations.
* Automatic query generation.
* Easy integration with Spring Boot.
* Transaction management using @Transactional.

---

# Difference between JPA, Hibernate and Spring Data JPA

| Feature                | JPA           | Hibernate     | Spring Data JPA |
| ---------------------- | ------------- | ------------- | --------------- |
| Type                   | Specification | ORM Framework | Spring Module   |
| Implementation         | No            | Yes           | Uses JPA        |
| Database Mapping       | Standard API  | Yes           | Yes             |
| CRUD Operations        | API only      | Manual        | Automatic       |
| Transaction Management | Specification | Manual        | Automatic       |
| Boilerplate Code       | More          | Less          | Very Less       |

---

# Hibernate Example

```java
Session session = factory.openSession();

Transaction tx = session.beginTransaction();

session.save(employee);

tx.commit();

session.close();
```

---

# Spring Data JPA Example

### EmployeeRepository.java

```java
@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

}
```

### EmployeeService.java

```java
@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    @Transactional
    public void addEmployee(Employee employee) {
        employeeRepository.save(employee);
    }
}
```

---

# Conclusion

* **JPA** is a specification.
* **Hibernate** is an implementation of JPA.
* **Spring Data JPA** is a higher-level abstraction over JPA that reduces boilerplate code and simplifies database operations.

Spring Data JPA internally uses Hibernate (or another JPA provider) to interact with the database.
