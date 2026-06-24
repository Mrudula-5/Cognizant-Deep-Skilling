
-- =====================================
-- Create Customers Table
-- =====================================

CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    Age NUMBER,
    Balance NUMBER,
    IsVIP VARCHAR2(5)
);

-- =====================================
-- Create Loans Table
-- =====================================

CREATE TABLE Loans (
    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    InterestRate NUMBER,
    DueDate DATE
);
-- =====================================
-- Insert Customer Data
-- =====================================

INSERT INTO Customers VALUES (1,'Amit',65,12000,'FALSE');
INSERT INTO Customers VALUES (2,'Priya',45,8000,'FALSE');
INSERT INTO Customers VALUES (3,'Rahul',70,15000,'FALSE');
INSERT INTO Customers VALUES (4,'Sneha',30,5000,'FALSE');

-- =====================================
-- Insert Loan Data
-- =====================================

INSERT INTO Loans VALUES (101,1,8.5,SYSDATE+20);
INSERT INTO Loans VALUES (102,2,9.0,SYSDATE+40);
INSERT INTO Loans VALUES (103,3,7.5,SYSDATE+10);
INSERT INTO Loans VALUES (104,4,8.0,SYSDATE+25);

COMMIT;

-- =====================================
-- Scenario 1
-- Apply 1% Discount
-- =====================================

BEGIN

FOR c IN
(
SELECT CustomerID
FROM Customers
WHERE Age > 60
)

LOOP

UPDATE Loans
SET InterestRate = InterestRate - 1
WHERE CustomerID = c.CustomerID;

END LOOP;

COMMIT;

END;
/

-- =====================================
-- Scenario 2
-- Promote VIP Customers
-- =====================================

BEGIN

FOR c IN
(
SELECT CustomerID
FROM Customers
WHERE Balance > 10000
)

LOOP

UPDATE Customers
SET IsVIP='TRUE'
WHERE CustomerID=c.CustomerID;

END LOOP;

COMMIT;

END;
/

-- =====================================
-- Scenario 3
-- Loan Reminder
-- =====================================

BEGIN

FOR l IN
(
SELECT c.CustomerName,
       l.LoanID,
       l.DueDate
FROM Customers c
JOIN Loans l
ON c.CustomerID=l.CustomerID
WHERE l.DueDate<=SYSDATE+30
)

LOOP

DBMS_OUTPUT.PUT_LINE(
'Reminder: '||
l.CustomerName||
' | Loan ID: '||
l.LoanID||
' | Due Date: '||
TO_CHAR(l.DueDate,'DD-MON-YYYY')
);

END LOOP;

END;
/