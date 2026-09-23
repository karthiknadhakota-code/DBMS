CREATE DATABASE Restaurant;

USE Restaurant;

CREATE TABLE Restaurant
(
    RID INT PRIMARY KEY,
    RName VARCHAR(100) NOT NULL,
    Contact BIGINT NOT NULL UNIQUE,
    Address VARCHAR(200) NOT NULL,
    Rating DECIMAL(2,1) CHECK (Rating BETWEEN 0 AND 5),
    Type VARCHAR(50) NOT NULL
);

INSERT INTO Restaurant VALUES
(101, 'Kirans Kitchen', 9876543210, 'Chennai', 4.5, 'Non veg'),
(102, 'Taj', 9123456780, 'AndhraPradesh', 4.0, 'Chinese'),
(103, 'Sri Mayura', 9988776655, 'Rangampeta', 4.5, 'veg'),
(104, 'AndhraSpice', 9012345678, 'Madras', 4.5, 'Veg'),
(107, 'Tulasi Gardens', 6899776655, 'Banglore', 4.3, 'Fast Food');

CREATE TABLE Customer
(
    CID INT PRIMARY KEY,
    CName VARCHAR(100) NOT NULL,
    Mobile BIGINT NOT NULL UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Address VARCHAR(200) NOT NULL
);

INSERT INTO Customer VALUES
(209, 'Siri', 6376500001, 'siri235@gmail.com', 'Hyderabad'),
(210, 'Neela', 9776506642, 'neelaagunji@gmail.com', 'Andhrapradesh'),
(212, 'Rahul', 9864654603, 'rahu928l@gmail.com', 'Chennai'),
(213, 'Priya', 6598523454, 'priya654@gmail.com', 'Mumbai'),
(214, 'Kumar', 9476523565, 'kumar123@gmail.com', 'Vijayawada');

CREATE TABLE Food
(
    FID INT PRIMARY KEY,
    FName VARCHAR(100) NOT NULL,
    Type VARCHAR(50) NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity >0 or Quantity =0),
    Price DECIMAL(10,2) NOT NULL CHECK (Price > 0)
);

INSERT INTO Food VALUES
(305, 'Chicken Biryani', 'Non-Veg', 1, 250.00),
(306, 'Pizza', 'Veg', 3, 200.00),
(307, 'Burger', 'Non-Veg', 3, 399.00),
(308, 'Veg Noodles', 'Fast food', 2, 399.00),
(309, 'Mutton Biryani', 'fast food', 1, 350.00),
(310, 'Chicken 65', 'Fast food', 15, 300.00);

CREATE TABLE Payment
(
    PID INT PRIMARY KEY,
    Amount DECIMAL(10,2) NOT NULL ,
    Type VARCHAR(30) NOT NULL,
    Date DATE NOT NULL,
    Discount DECIMAL(5,2) CHECK (Discount BETWEEN 0 AND 100)
);

INSERT INTO Payment VALUES
(501, 850.00, 'UPI', '01-02-26', 10.00),
(502, 1200.00, 'Card', '20-03-26', 5.00),
(503, 650.00, 'Cash', '25-04-26', 0.00),
(504, 1500.00, 'UPI', '26-05-26', 15.00),
(505, 950.00, 'Cash', '06-06-26', 10.00),
(309, 700.00, 'Cash', '02-08-26', 5.00);

CREATE TABLE Staff
(
    SID INT PRIMARY KEY,
    SName VARCHAR(100) NOT NULL,
    Order_Count INT DEFAULT 0 CHECK (Order_Count >= 0),
    Rating DECIMAL(2,1) CHECK (Rating BETWEEN 0 AND 5),
    Position VARCHAR(50) NOT NULL,
    Salary INT NOT NULL
);

INSERT INTO Staff VALUES
(156, 'Balu', 250, 4.6, 'Manager',19000),
(162, 'Suresh', 95, 1.9, 'Chef',20000),
(163, 'Praveen', 210, 4.7, 'Waiter',21000),
(184, 'Suresh', 49, 4.0, 'Cashier',22000),
(225, 'Lallu', 205, 4.8, 'Chef',18000);

UPDATE restaurant
SET ADDRESS = 'Jammalamadugu'
WHERE RID = 101;

UPDATE restaurant
SET Rating = 4.5
WHERE RName = 'Taj';

UPDATE customer
SET Email = 'siri123@email.com',
    ADDRESS = 'Nellore'
WHERE CName = 'siri';

UPDATE Food
SET Quantity = '10'
WHERE FID = 305 OR Price = 399;

UPDATE Payment
SET Discount = 15
WHERE PID = 501;

UPDATE Food
SET Type = 'Fast Food'
WHERE FName = 'Pizza';

UPDATE restaurant
SET Type= 'Veg'
WHERE RID = 101;

UPDATE Staff
SET salary = 29000
WHERE rating >=4.6
AND Order_count > 200;

UPDATE Payment
SET Amount = 1100,
    Discount = 20
WHERE PID = 309;

DELETE FROM Payment
WHERE PID = 505 AND type = 'Cash';

DELETE FROM Staff
WHERE SName = 'Suresh' 
AND rating < 2 ; 

DELETE FROM Food
WHERE FName = 'Burger';

DELETE FROM Staff
WHERE Order_count < 50 OR Rating < 2 ;

SELECT * FROM restaurant
WHERE Type = 'Veg';

SELECT contact FROM restaurant
WHERE ADDRESS = 'Rangampeta';

SELECT * FROM restaurant
WHERE Rating = 4.5;

SELECT Email FROM Customer
WHERE CID = 210;

SELECT FName, Price, Quantity FROM Food;

SELECT * FROM Food
WHERE Type = 'Fast Food' AND Price > 299;

SELECT type FROM Payment
WHERE PID = 505;

SHOW TABLES;
drop database bookmyshow1;
SELECT * FROM Restaurant;
SELECT * FROM Customer;
SELECT * FROM Food;
SELECT * From payment;
SELECT * FROM Staff;