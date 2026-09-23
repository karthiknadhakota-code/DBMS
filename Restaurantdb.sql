CREATE DATABASE RestaurantDB;

USE RestaurantDB;

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
(3936, 'Kirans Kitchen', 9876543210, 'Hyderabad', 4.5, 'Indian'),
(6339, 'Abhiruchi', 9123456780, 'AndhraPradesh', 4.2, 'Chinese'),
(3639, 'Sri Mayura', 9988776655, 'Vijayawada', 4.7, 'Biryani'),
(3963, 'AndhraSpice', 9012345678, 'Madras', 4.0, 'Vegetarian'),
(9363, 'Tulasi Gardens', 6899776655, 'Banglore', 4.3, 'Fast Food');

CREATE TABLE Customer
(
    CID INT PRIMARY KEY,
    CName VARCHAR(100) NOT NULL,
    Mobile BIGINT NOT NULL UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Address VARCHAR(200) NOT NULL
);

INSERT INTO Customer VALUES
(1234, 'Siri', 6376500001, 'siri235@gmail.com', 'Hyderabad'),
(4567, 'Neela', 9776506642, 'neelaagunji@gmail.com', 'Andhrapradesh'),
(8963, 'Rahul', 9864654603, 'rahu928l@gmail.com', 'Chennai'),
(4568, 'Priya', 6598523454, 'priya654@gmail.com', 'Mumbai'),
(5402, 'Kumar', 9476523565, 'kumar123@gmail.com', 'Vijayawada'),
(6564, 'Anji', 9110506357, 'anji@gmail.com', 'AndhrePradesh'),
(8235, 'Rohit', 6305853695, 'rohitkumar@gmail.com', 'Delhi'),
(7965, 'Muralu', 982356898, 'murali568@gmail.com', 'Chennai'),
(4561, 'Varun', 7386304349, 'varun@gmail.com', 'Hyderabad'),
(5635, 'Adithya', 9440001834, 'adithya@gmail.com', 'Bangalore');

CREATE TABLE Payment
(
    PID INT PRIMARY KEY,
    Amount DECIMAL(10,2) NOT NULL CHECK (Amount > 0),
    Type VARCHAR(30) NOT NULL,
    Date DATE NOT NULL,
    Discount DECIMAL(5,2) CHECK (Discount BETWEEN 0 AND 100)
);

drop table payment;
INSERT INTO Payment VALUES
(3931, 850.00, 'UPI', '01-02-26', 10.00),
(3932, 1200.00, 'Card', '20-03-26', 5.00),
(3933, 650.00, 'Cash', '25-04-26', 0.00),
(3934, 1500.00, 'UPI', '26-05-26', 15.00),
(3935, 950.00, 'Card', '06-06-26', 10.00),
(3936, 700.00, 'Cash', '02-08-26', 5.00),
(3937, 1800.00, 'UPI', '31-07-26', 20.00),
(3938, 550.00, 'Card', '16-08-26', 0.00),
(3939, 1100.00, 'UPI', '06-09-26', 10.00),
(3940, 900.00, 'Cash', '29-12-26', 5.00);


CREATE TABLE Food
(
    FID INT PRIMARY KEY,
    FName VARCHAR(100) NOT NULL,
    Type VARCHAR(50) NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity >0 or Quantity =0),
    Price DECIMAL(10,2) NOT NULL CHECK (Price > 0)
);

INSERT INTO Food VALUES
(1, 'Chicken Biryani', 'Non-Veg', 50, 250.00),
(2, 'Paneer Biryani', 'Veg', 30, 200.00),
(3, 'Chicken Fried Rice', 'Non-Veg', 40, 180.00),
(4, 'Veg Noodles', 'Veg', 35, 150.00),
(5, 'Mutton Biryani', 'Non-Veg', 25, 350.00),
(6, 'Chicken 65', 'Non-Veg', 45, 220.00),
(7, 'Masala Dosa', 'Veg', 60, 100.00),
(8, 'Paneer Curry', 'Veg', 30, 180.00),
(9, 'Veg Burger', 'Veg', 50, 120.00),
(10, 'Chicken Burger', 'Non-Veg', 45, 160.00);

CREATE TABLE Staff
(
    SID INT PRIMARY KEY,
    SName VARCHAR(100) NOT NULL,
    Order_Count INT DEFAULT 0 CHECK (Order_Count >= 0),
    Rating DECIMAL(2,1) CHECK (Rating BETWEEN 0 AND 5),
    Position VARCHAR(50) NOT NULL
);

INSERT INTO Staff VALUES
(156, 'Balu', 120, 4.5, 'Manager'),
(162, 'Suresh', 95, 4.2, 'Chef'),
(163, 'Praveen', 110, 4.7, 'Waiter'),
(184, 'Karthik', 80, 4.0, 'Cashier'),
(225, 'Lallu', 100, 4.3, 'Chef');

SHOW TABLES;
drop table payments;
SELECT * FROM Restaurant;
SELECT * FROM Customer;
SELECT * FROM Food;
SELECT * From payment;
SELECT * FROM Staff;