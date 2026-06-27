package com.cognizant;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CalculatorTest {

    private Calculator calculator;

    // Setup Method
    @BeforeEach
    void setUp() {

        System.out.println("Setup Method Executed");

        calculator = new Calculator();

    }

    // Test Method
    @Test
    void testAddition() {

        // Arrange
        int a = 15;
        int b = 20;

        // Act
        int result = calculator.add(a, b);

        // Assert
        assertEquals(35, result);

        System.out.println("Test Executed Successfully");

    }

    // Teardown Method
    @AfterEach
    void tearDown() {

        System.out.println("Teardown Method Executed");

        calculator = null;

    }
}