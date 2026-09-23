CREATE DATABASE BookMyShowQ;

USE BookMyShowQ;

CREATE TABLE Customer
(
    C_Id INT PRIMARY KEY,
    C_Name VARCHAR(100) NOT NULL,
    Mobile BIGINT NOT NULL,
    Email VARCHAR(100),
    City VARCHAR(50)
);


INSERT INTO Customer VALUES
(123,'sanju',7006543210,'sanju@gmail.com','Tirupati'),
(124,'Sita',9365656780,'sita@gmail.com','Chennai'),
(125,'Ramu',9984561655,'ramu@gmail.com','Tirupati'),
(126,'Priyanka',9012345678,'priyanka@gmail.com','Hyderabad'),
(127,'Venky',9345678901,'venky@gmail.com','Hyderabad'),
(128,'Aruna',9098943210,'aruna@gmail.com','Ongole'),
(129,'sreenu',9678456780,'sreenu@gmail.com','Tirupati'),
(130,'Ranjan',8564709855,'ranjan@gmail.com','Hyderabad'),
(131,'Prakash',7569875678,'prakash@gmail.com','Andhra Pradesh'),
(132,'Vinay',9654678901,'vinay@gmail.com','Tirupati'),
(133,'Sanju',6589808109,'sanju@gmail.com','Hyderabad'),
(134,'Rahul',6544560980,'rahul@gmail.com','Bangalore'),
(135,'Rehman',6548834560,'rehman@gmail.com','Tirupati'),
(136,'Santhosh',9123458401,'santhosh@gmail.com','Mumbai'),
(137,'Dhanush',9956421234,'dhanush@gmail.com','Chennai');

CREATE TABLE Movie
(
    M_Id INT PRIMARY KEY,
    M_Name VARCHAR(100) NOT NULL UNIQUE,
    Language VARCHAR(30) NOT NULL,
    Genre VARCHAR(30),
    Duration INT
);

INSERT INTO Movie VALUES
(102,'Anji','Telugu','Action',155),
(103,'Sir','Tamil','Thriller',159),
(104,'Tiger 3','Hindi','Action',89),
(105,'OG','Telugu','Drama',143),
(106,'Junior','Kannada','Drama',162),
(107,'Hanuman','Telugu','Romance',138),
(108,'Avengers','English','Drama',180),
(109,'Premalu','Malayalam','Action',117),
(110,'Spiderman','English','Action',216),
(111,'Rayaan','Tamil','Action',167);

drop table Movie;

CREATE TABLE Theater
(
    T_Id INT PRIMARY KEY,
    T_Name VARCHAR(100) NOT NULL UNIQUE,
    Location VARCHAR(50),
    City VARCHAR(50),
    Screens INT
);

INSERT INTO Theater VALUES
(201,'AMB Cinemas','Gachibowli','Hyderabad',5),
(202,'PGR Cinemas','Moosapet','Tirupati',2),
(203,'PVR','Kapali','Chennai',4),
(204,'KNR Cinemas','Ameerpet','Tirupati',3),
(205,'KTR Screens','Goregaon','Mumbai',6);

CREATE TABLE Shows
(
    S_Id INT PRIMARY KEY,
    M_Id INT,
    T_Id INT,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
   
    FOREIGN KEY (M_Id) REFERENCES Movie(M_Id),
    FOREIGN KEY (T_Id) REFERENCES Theater(T_Id)
);

INSERT INTO Shows VALUES
(601,102,'201','2026-08-01','11:00'),
(602,102,'201','2026-08-02','11:30'),
(603,103,'202','2026-08-03','14:30'),
(604,104,'202','2026-08-04','14:15'),
(605,105,'203','2026-08-05','18:20'),
(606,106,'203','2026-08-06','18:30'),
(607,107,'204','2026-08-07','18:40'),
(608,108,'204','2026-08-08','21:30'),
(609,109,'205','2026-08-09','21:45'),
(610,110,'205','2026-08-10','22:00');

drop table shows;

CREATE TABLE Booking
(
    B_Id INT PRIMARY KEY,
    C_Id INT,
    S_Id INT,
    Seats INT NOT NULL,
    Booking_Date DATE NOT NULL,

    FOREIGN KEY (C_Id) REFERENCES Customer(C_Id),
    FOREIGN KEY (S_Id) REFERENCES Shows(S_Id)
);

INSERT INTO Booking VALUES
(401,123,601,2,'2026-08-01'),
(402,124,602,3,'2026-08-02'),
(403,125,603,1,'2026-08-03'),
(404,126,604,4,'2026-08-04'),
(405,127,605,2,'2026-08-05'),
(406,128,606,5,'2026-08-06'),
(407,129,607,2,'2026-08-07'),
(408,130,608,4,'2026-08-08'),
(409,131,609,1,'2026-08-09'),
(410,132,610,6,'2026-08-10');

CREATE TABLE Payment
(
    P_Id INT PRIMARY KEY,
    B_Id INT,
    P_Type VARCHAR(30) NOT NULL,
    Amount DECIMAL(10,2),
    P_Status VARCHAR(20) NOT NULL,

    FOREIGN KEY (B_Id) REFERENCES Booking(B_Id)
);

INSERT INTO Payment VALUES
(501,401,'UPI',360.00,'Success'),
(502,402,'Debit Card',660.00,'Success'),
(503,403,'Credit Card',400.00,'Success'),
(504,404,'UPI',299.00,'Failed'),
(505,405,'Net Banking',440.00,'Success'),
(506,406,'UPI',1100.00,'Refunded'),
(507,407,'Debit Card',490.00,'pending'),
(508,408,'Cash',600.00,'pending'),
(509,409,'Credit Card',300.00,'Success'),
(510,410,'UPI',99.00,'Pending');

SELECT C_Name
FROM Customer
WHERE City = 'Tirupati';

SELECT C_Name, Mobile
FROM Customer
WHERE City = 'Hyderabad';

SELECT * FROM Movie
WHERE Language = 'Telugu';

SELECT M_Name, Genre
FROM Movie
WHERE Genre = 'Action';

SELECT M_Name
FROM Movie
WHERE Duration > 150;

SELECT * FROM Theater
WHERE City = 'Tirupati';

SELECT T_Name, Location
FROM Theater
WHERE Screens > 3;

SELECT * FROM Shows
WHERE Date = '2026-08-07';

SELECT S_Id, M_Id, Time
FROM Shows
WHERE Time > '18:00';

SELECT * FROM Booking
WHERE Seats > 3;

SELECT B_Id ,C_Id,Seats 
FROM Booking
WHERE Date > '2026-08-06';

SELECT * FROM payment
WHERE Amount>500.00;

SELECT P_Id,B_Id,P_Type
FROM Payment 
WHERE P_Type ='UPI';

SELECT * FROM Payment
WHERE P_Status='Success';

SELECT C_Name,Email
FROM Customer 
WHERE City='Tirupati' OR 'Chennai';

SELECT M_Name 
FROM Movie 
WHERE Language='Telugu' AND Genre='Action';

SELECT M_Name
FROM Movie
WHERE Duration>120 AND Duration < 180;

 SELECT * FROM Customer
WHERE City='Tirupati' AND Email is NOT NULL;

SELECT * FROM Theater 
WHERE City ='Tirupati' OR 'Hyderabad';

SELECT T_Name 
FROM Theater 
WHERE Screens > 2 AND City ='Tiruapti';

SELECT * FROM Booking
WHERE Seats >=2 AND Seats <=5;

SELECT B_Id , C_Id 
FROM Booking 
WHERE Date='2026-08-05' OR Seats > 4;

SELECT * FROM Payment
WHERE Amount >500 AND P_Status='Success';

SELECT P_Id ,Amount,P_Type
FROM Payment 
WHERE P_Type = 'UPI' OR 'Credit Card';
 
SELECT * FROM Customer
WHERE City ='Tirupati' OR 'Hyderabad' AND Mobile is NOT NULL;

SELECT C_Id , C_Name
WHERE City ='Tirupati';

SELECT M_Name AS Movie_Name, Language, Genre
FROM Movie
WHERE Duration > 120;

SELECT T_Name AS Theatre_Name, City, Screens
FROM Theater
WHERE Screens > 3;

SELECT S_Id , M_Id , Time AS show_Time
FROM Shows
WHERE Time > '18:00';

SELECT P_Id AS Payment_ID , Amount, P_Status AS PAyment_Status 
FROM Payment
WHERE Amount > 500;


SELECT C.C_Name, B.B_Id AS Booking_ID
FROM Customer C
JOIN Booking B ON C.C_Id = B.C_Id;


SELECT C.C_Name, C.Mobile, B.Seats
FROM Customer C
JOIN Booking B ON C.C_Id = B.C_Id;


SELECT M.M_Name AS Movie_Name, S.Time AS Show_Time
FROM Movie M
JOIN Shows S ON M.M_Id = S.M_Id;


SELECT M.M_Name AS Movie_Name, M.Language, S.Date AS Show_Date
FROM Movie M
JOIN Shows S ON M.M_Id = S.M_Id;


SELECT T.T_Name AS Theatre_Name, S.Time AS Show_Time
FROM Theater T
JOIN Shows S ON T.T_Id = S.T_Id;


SELECT T.T_Name AS Theatre_Name, T.City, S.Date AS Show_Date
FROM Theater T
JOIN Shows S ON T.T_Id = S.T_Id;


SELECT M.M_Name AS Movie_Name, T.T_Name AS Theatre_Name
FROM Movie M
JOIN Shows S ON M.M_Id = S.M_Id
JOIN Theater T ON S.T_Id = T.T_Id;


SELECT M.M_Name AS Movie_Name, T.T_Name AS Theater_Name, T.City
FROM Movie M
JOIN Shows S ON M.M_Id = S.M_Id
JOIN Theater T ON S.T_Id = T.T_Id
WHERE T.City = 'Tirupati';


SELECT C.C_Name AS Customer_Name,
       M.M_Name AS Movie_Name,
       B.Seats
FROM Customer C
JOIN Booking B ON C.C_Id = B.C_Id
JOIN Shows S ON B.S_Id = S.S_Id
JOIN Movie M ON S.M_Id = M.M_Id
WHERE B.Seats > 2;


SELECT M.M_Name AS Movie_Name,
       T.T_Name AS Theater_Name,
       S.Time AS Show_Time
FROM Movie M
JOIN Shows S ON M.M_Id = S.M_Id
JOIN Theater T ON S.T_Id = T.T_Id
WHERE T.City = 'Tirupati'
AND S.Time > '18:00';


SELECT C.C_Name AS Customer_Name,
       M.M_Name AS Movie_Name,
       B.Booking_Date
FROM Customer C
JOIN Booking B ON C.C_Id = B.C_Id
JOIN Shows S ON B.S_Id = S.S_Id
JOIN Movie M ON S.M_Id = M.M_Id
WHERE B.Booking_Date > '2062-08-04';


SELECT M.M_Name AS Movie_Name,
       T.T_Name AS Theatre_Name,
       T.City
FROM Movie M
JOIN Shows S ON M.M_Id = S.M_Id
JOIN Theater T ON S.T_Id = T.T_Id
WHERE M.Language = 'Telugu'
AND T.City = 'Tirupati';

UPDATE Customer
SET City = 'Chittoor'
WHERE C_Id = 123
AND City = 'Tirupati';

UPDATE Movie
SET Genre = 'Action'
WHERE M_Id = 105;

UPDATE Theater
SET Screens = Screens + 1
WHERE T_Id = 202;

UPDATE Payment
SET P_Status = 'Success'
WHERE P_Id = 510;

UPDATE Payment
SET P_Type = 'UPI'
WHERE P_Status = 'Pending' AND Amount < 500;

DELETE FROM Customer
WHERE C_Id = 123;

DELETE FROM Movie
WHERE Duration < 90;

DELETE FROM Theater
WHERE Screens < 2 AND City = 'Tirupati';

DELETE FROM Booking
WHERE Seats = 1 AND Booking_Date < '2026-08-03';

DELETE FROM Payment
WHERE P_Status = 'Failed'
AND Amount < 300;

UPDATE Movie
SET Duration = Duration + 10
WHERE Duration < 120;

UPDATE Theater
SET Screens = Screens + 1
WHERE Screens < 3;

UPDATE Theater
SET City = 'Tirupati'
WHERE City = 'Chittoor' AND Screens >= 3;

UPDATE Movie
SET Language = 'Telugu'
WHERE Language = 'English' AND Genre = 'Drama';

UPDATE Movie
SET Genre = 'Action'
WHERE Language = 'Telugu' AND Duration > 120;

UPDATE Shows
SET Time = '18:00'
WHERE Date = '2026-08-02'
AND Time < '18:00';

UPDATE Booking
SET Seats = Seats + 1
WHERE Seats < 3;

UPDATE Booking
SET Booking_Date = '2026-08-04'
WHERE Seats > 4
AND Booking_Date < '2026-08-05';

UPDATE Payment
SET P_Type = 'UPI'
WHERE P_Type = 'Cash';

UPDATE Payment
SET P_Status = 'Success'
WHERE Amount > 500 AND P_Status = 'Pending';

UPDATE Payment
SET P_Status = 'Failed'
WHERE Amount < 100 AND P_Status = 'Pending';

UPDATE Payment
SET Amount = Amount + 50
WHERE P_Type = 'UPI' AND Amount < 500;

DELETE FROM Customer
WHERE City = 'Tirupati' AND Email LIKE '%@gmail.com';

DELETE FROM Movie
WHERE Language = 'English' AND Duration > 180;

DELETE FROM Theater
WHERE City = 'Hyderabad' OR 'Chennai' AND Screens < 3;

DELETE FROM Shows
WHERE Date = '2026-08-04' AND Time < '15:00';

DELETE FROM Booking
WHERE Seats > 4 AND Booking_Date < '2026-08-09';

DELETE FROM Payment
WHERE Amount > 1000 AND P_Status = 'Failed';




SELECT COUNT(*) AS total_Customers
FROM Customer
WHERE City='Tirupati' AND Email LIKE '@gmail.com';

SELECT COUNT(*) AS total_Customers 
FROM Customer
WHERE City='Hyderabad' OR 'Chennai';

SELECT COUNT(*) AS total_Movies
FROM Movie 
WHERE Language ='Telugu' AND Genre='Action';

SELECT COUNT(*) AS total_Movies
FROM Movie 
WHERE duration>120 AND duration<180;

SELECT COUNT(*) AS total_theater
FROM Theater
WHERE City='Tirupati' AND Screens>3;

SELECT COUNT(*) AS total_bookings
FROM Booking
WHERE Seats>=3 AND Seats<=5;

SELECT MIN(Duration) AS Minimum_Duration
FROM Movie
WHERE Language = 'Telugu' AND Genre = 'Action';

SELECT MAX(Duration) AS Maximum_Duration
FROM Movie
WHERE Language = 'ENGLISH' OR  'HINDI';

SELECT AVG(Duration) AS Avg_Duration
FROM Movie
WHERE Duration > 120 AND Duration < 180;

SELECT MIN(Screens) AS Minimum_Screens
FROM Theater
WHERE City = 'Tirupati' AND Screens > 2;

SELECT MAX(Screens) AS Maximum_Screens
FROM Theater
WHERE City = 'Hyderabad' OR 'Chennai';

SELECT AVG(Screens) AS Average_Screens
FROM Theater
WHERE City = 'Tirupati' AND Screens >= 3;

SELECT MIN(Seats) AS Minimum_Seats
FROM Booking
WHERE Seats > 1 AND Seats < 5;

SELECT MAX(Seats) AS Maximum_Seats
FROM Booking
WHERE Booking_Date > '2026-08-02' AND Seats > 2;

SELECT AVG(Amount) AS Average_Payment
FROM Payment
WHERE P_Status = 'Success' AND Amount > 500;

SELECT SUM(Amount) AS Total_Payment
FROM Payment
WHERE P_Status = 'Success' AND Amount > 500;

SELECT SUM(Amount) AS Total_Payment
FROM Payment
WHERE P_Type = 'UPI' AND Amount > 300;

SELECT SUM(Amount) AS Total_Payment
FROM Payment
WHERE P_Status = 'Success'
AND P_Type = 'UPI' AND Amount > 500;

SELECT DISTINCT City
FROM Theater
WHERE Screens > 2 AND Screens < 6;

SELECT DISTINCT P_Status AS Payment_Status
FROM Payment
WHERE P_Type = 'UPI' OR 'Credit Card';

SELECT DISTINCT Date AS Show_Date
FROM Shows
WHERE Time > '18:00' AND Time < '22:00';

SELECT C_Name AS Customer_Name
FROM Customer
WHERE C_Name LIKE 'A%' AND City = 'Tirupati';

SELECT C_Name AS Customer_Name
FROM Customer
WHERE (C_Name LIKE 'R%' OR C_Name LIKE 'S%')
AND City = 'Hyderabad';

SELECT C_Name AS Customer_Name, Email
FROM Customer
WHERE C_Name LIKE '%an%' AND Email LIKE '%@gmail.com';

SELECT M_Name AS Movie_Name
FROM Movie
WHERE M_Name LIKE 'S%'AND Language = 'Telugu';

SELECT Language, AVG(Duration) AS Average_Duration
FROM Movie
WHERE Duration > 100 GROUP BY Language;


SELECT City, COUNT(*) AS Number_Of_Theatres
FROM Theater
WHERE Screens >=3 GROUP BY City;

use bookmyshowq;

SELECT City, AVG(Screens) AS Average_Screens
FROM Theater
WHERE Screens > 2 GROUP BY City;


SELECT P_Type, SUM(Amount) AS Total_Payment
FROM Payment
WHERE P_Status = 'Success' GROUP BY P_Type;


SELECT City, COUNT(*) AS Number_Of_Customers
FROM Customer
GROUP BY City HAVING COUNT(*) > 2;


SELECT Language, COUNT(*) AS Number_Of_Movies
FROM Movie
GROUP BY Language HAVING COUNT(*) > 3;


SELECT Genre, AVG(Duration) AS Average_Duration
FROM Movie
GROUP BY Genre HAVING AVG(Duration) > 120;


SELECT City, COUNT(*) AS Number_Of_Theaters
FROM Theater
GROUP BY City HAVING COUNT(*) >= 2;


SELECT P_Type, SUM(Amount) AS Total_Payment
FROM Payment
GROUP BY P_Type HAVING SUM(Amount) > 2000;


SELECT Genre, COUNT(*) AS Number_Of_Movies
FROM Movie
WHERE Language = 'Telugu'
GROUP BY Genre HAVING COUNT(*) > 2;


SELECT C_Id, SUM(Seats) AS Total_Seats
FROM Booking
WHERE Seats > 1
GROUP BY C_Id HAVING SUM(Seats) > 5;


SELECT P_Type, AVG(Amount) AS Average_Payment
FROM Payment
WHERE P_Status = 'Success'
GROUP BY P_Type HAVING AVG(Amount) > 500;


SELECT Genre, COUNT(*) AS Number_Of_Movies
FROM Movie
GROUP BY Genre ORDER BY Number_Of_Movies DESC;


SELECT Language, AVG(Duration) AS Average_Duration
FROM Movie
GROUP BY Language ORDER BY Average_Duration ASC;


SELECT P_Type, SUM(Amount) AS Total_Payment
FROM Payment
WHERE P_Status = 'Success' AND Amount > 300
GROUP BY P_Type HAVING SUM(Amount) > 1000
ORDER BY Total_Payment DESC;


SELECT M_Name FROM Movie WHERE Duration=(
SELECT Max(duration) FROM Movie);

SELECT * FROM Movie WHERE Duration=(
SELECT MIN(duration) FROM Movie); 

SELECT * FROM Theater WHERE screens=(
SELECT Max(screens) FROM Theater);

SELECT * FROM Theater WHERE screens=(
SELECT Min(screens) FROM Theater);

SELECT * FROM Booking WHERE seats=(
SELECT Max(seats) FROM Booking);

SELECT * FROM Booking WHERE seats=(
SELECT distinct Min(seats) FROM Booking);

SELECT * FROM Payment WHERE amount=(
SELECT Max(amount) FROM Payment);

SELECT * FROM Payment WHERE amount=(
SELECT Max(amount) FROM payment);

SELECT M_Name FROM Movie
WHERE Duration > ( SELECT AVG(Duration) FROM Movie);

SELECT T_Name FROM Theater
WHERE Screens > ( SELECT AVG(Screens) FROM Theater );



SELECT M_Name FROM Movie
WHERE Duration > ( SELECT Duration FROM Movie WHERE M_Id = 205 );

SELECT T_Name FROM Theater
WHERE Screens > ( SELECT Screens FROM Theater WHERE T_Id = 102 );

SELECT C_Name FROM Customer
WHERE City = ( SELECT City FROM Customer WHERE C_Id = 105 );

SELECT * FROM Booking
WHERE Seats > ( SELECT Seats FROM Booking WHERE B_Id = 305 );

SELECT * FROM Payment
WHERE Amount > ( SELECT Amount FROM Payment WHERE P_Id = 405 );

SELECT M_Name FROM Movie
WHERE Duration < ( SELECT AVG(Duration) FROM Movie );

SELECT T_Name FROM Theater
WHERE Screens < ( SELECT AVG(Screens) FROM Theater );



SELECT C_Name FROM Customer
WHERE C_Id IN ( SELECT C_Id FROM Booking WHERE Seats>=1 );

SELECT M_Name FROM Movie
WHERE M_Id IN ( SELECT M_Id FROM Shows );

SELECT T_Name FROM Theater
WHERE T_Id IN ( SELECT T_Id FROM Shows );

SELECT C_Name FROM Customer
WHERE C_Id NOT IN ( SELECT C_Id FROM Booking );



SELECT M_Name FROM Movie
WHERE Duration > ( SELECT AVG(Duration) FROM Movie )
AND Language = 'Telugu';

SELECT T_Name FROM Theater
WHERE Screens > ( SELECT AVG(Screens) FROM Theater )
AND City = 'Tirupati';

SELECT * FROM Payment
WHERE Amount > ( SELECT AVG(Amount) FROM Payment )
AND P_Status = 'Success';

SELECT C_Name FROM Customer
WHERE C_Id IN ( SELECT C_Id FROM Booking WHERE Seats > 2 );



SELECT M_Name FROM Movie M
WHERE Duration > ( SELECT AVG(M2.Duration) FROM Movie M2
    WHERE M2.Language = M.Language );


SELECT T_Name FROM Theater T
WHERE Screens > ( SELECT AVG(T2.Screens) FROM Theater T2 
            WHERE T2.City = T.City );


SELECT * FROM Customer C
WHERE C_Id IN ( SELECT B.C_Id FROM Booking B
    WHERE B.Seats > (
        SELECT AVG(B2.Seats) FROM Booking B2 WHERE B2.C_Id = B.C_Id ));


SELECT * FROM Payment P
WHERE Amount > ( SELECT AVG(P2.Amount) FROM Payment P2
    WHERE P2.P_Type = P.P_Type );


SELECT M_Name FROM Movie M
WHERE Duration > (
    SELECT AVG(M2.Duration) FROM Movie M2
    WHERE M2.Genre = M.Genre );


SELECT * FROM Customer;
SELECT * FROM Movie;
SELECT * FROM Theater;
SELECT * FROM Shows;
SELECT * FROM Booking;
SELECT * FROM Payment;