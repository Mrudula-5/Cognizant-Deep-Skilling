-- ==========================================================
-- Exercise 3 : Stored Procedures
-- Cognizant Deep Skilling Program
-- ==========================================================

-- ==========================================================
-- SCENARIO 1
-- Process Monthly Interest
-- ==========================================================

-- Create Accounts Table

CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    AccountType VARCHAR2(20),
    Balance NUMBER
);

-- Insert Sample Data

INSERT INTO Accounts VALUES (101,'Amit','Savings',10000);
INSERT INTO Accounts VALUES (102,'Priya','Current',15000);
INSERT INTO Accounts VALUES (103,'Rahul','Savings',20000);
INSERT INTO Accounts VALUES (104,'Sneha','Savings',5000);

COMMIT;

-- View Data

SELECT * FROM Accounts;

-- Stored Procedure

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
AS
BEGIN

    UPDATE Accounts
    SET Balance = Balance + (Balance * 0.01)
    WHERE AccountType = 'Savings';

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Monthly Interest Processed Successfully');

END;
/

-- Execute Procedure

BEGIN
    ProcessMonthlyInterest;
END;
/

-- Verify Output

SELECT * FROM Accounts;


-- ==========================================================
-- SCENARIO 2
-- Update Employee Bonus
-- ==========================================================

-- Create Employees Table

CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Department VARCHAR2(20),
    Salary NUMBER
);

-- Insert Sample Data

INSERT INTO Employees VALUES (1,'Rohan','HR',30000);
INSERT INTO Employees VALUES (2,'Priya','IT',50000);
INSERT INTO Employees VALUES (3,'Amit','IT',45000);
INSERT INTO Employees VALUES (4,'Sneha','HR',35000);

COMMIT;

-- View Data

SELECT * FROM Employees;

-- Stored Procedure

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(

    p_department IN VARCHAR2,
    p_bonus IN NUMBER

)
AS
BEGIN

    UPDATE Employees
    SET Salary = Salary + (Salary * p_bonus / 100)
    WHERE Department = p_department;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Bonus Updated Successfully');

END;
/

-- Execute Procedure

BEGIN
    UpdateEmployeeBonus('IT',10);
END;
/

-- Verify Output

SELECT * FROM Employees;


-- ==========================================================
-- SCENARIO 3
-- Transfer Funds
-- ==========================================================

-- Drop Previous Accounts Table

DROP TABLE Accounts;

-- Create New Accounts Table

CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    Balance NUMBER
);

-- Insert Sample Data

INSERT INTO Accounts VALUES (101,'Amit',10000);
INSERT INTO Accounts VALUES (102,'Priya',15000);
INSERT INTO Accounts VALUES (103,'Rahul',8000);

COMMIT;

-- View Data

SELECT * FROM Accounts;

-- Stored Procedure

CREATE OR REPLACE PROCEDURE TransferFunds(

    p_fromAccount IN NUMBER,
    p_toAccount IN NUMBER,
    p_amount IN NUMBER

)
AS

    v_balance NUMBER;

BEGIN

    SELECT Balance
    INTO v_balance
    FROM Accounts
    WHERE AccountID = p_fromAccount;

    IF v_balance >= p_amount THEN

        UPDATE Accounts
        SET Balance = Balance - p_amount
        WHERE AccountID = p_fromAccount;

        UPDATE Accounts
        SET Balance = Balance + p_amount
        WHERE AccountID = p_toAccount;

        COMMIT;

        DBMS_OUTPUT.PUT_LINE('Transfer Successful');

    ELSE

        DBMS_OUTPUT.PUT_LINE('Insufficient Balance');

    END IF;

END;
/

-- Execute Procedure

BEGIN
    TransferFunds(101,102,3000);
END;
/

-- Verify Output

SELECT * FROM Accounts;

-- Optional Test

BEGIN
    TransferFunds(101,102,20000);
END;
/