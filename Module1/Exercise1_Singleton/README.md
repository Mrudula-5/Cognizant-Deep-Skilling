# Exercise 1: Implementing Singleton Pattern

## Objective

To implement the Singleton Design Pattern and ensure that only one instance of the Logger class is created throughout the application lifecycle.

## Design Pattern Used

Singleton Pattern (Creational Design Pattern)


## Files

* Logger.java
* TestLogger.java

## Key Features

* Private constructor to prevent direct object creation
* Static instance variable to store the single object
* Public getInstance() method to access the object

## Output

Logger Created

LOG: Application Started

LOG: User Logged In

Exercise1_Singleton.Logger@7344699f

Exercise1_Singleton.Logger@7344699f

## Conclusion

The Singleton Pattern was successfully implemented using the Logger class. The private constructor prevented multiple object creation, while the getInstance() method provided access to the single instance. The identical object references in the output confirmed that only one Logger object was created and used throughout the application.
