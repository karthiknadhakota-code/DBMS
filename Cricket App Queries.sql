CREATE DATABASE CricketApp;

USE CricketApp;

CREATE TABLE Player (
    Player_ID INT PRIMARY KEY,
    Player_Name VARCHAR(50),
    Age INT,
    Gender CHAR(1) CHECK (Gender IN ('M','F')),
    Role VARCHAR(30),
    Country VARCHAR(50)
);

INSERT INTO Player VALUES
(101, 'Virat Kohli', 37, 'M', 'Batsman', 'India'),
(102, 'Rohit Sharma', 39, 'M', 'Batsman', 'India'),
(103, 'Jasprit Bumrah', 32, 'M', 'Bowler', 'India'),
(104, 'Ravindra Jadeja', 37, 'M', 'All-Rounder', 'India'),
(105, 'Will Jacks', 37, 'M', 'Batsman', 'England'),
(106, 'Pat Cummins', 36, 'M', 'Bowler', 'Australia'),
(107, 'Joe Root', 35, 'M', 'Batsman', 'England'),
(108, 'Ben Stokes', 35, 'M', 'All-Rounder', 'England'),
(109, 'Rakshid Khan', 31, 'M', 'Bowler', 'Afghanistan'),
(110, 'Nisanka', 26, 'M', 'Bowler', 'Srilanka');

CREATE TABLE Team (
    Team_ID INT PRIMARY KEY,
    Team_Name VARCHAR(50),
    Country VARCHAR(50),
    Coach VARCHAR(50),
    Ranking INT
);

INSERT INTO Team VALUES
(1, 'India', 'India', 'Gautam Gambhir', 1),
(2, 'Australia', 'Australia', 'Andrew McDonald', 2),
(3, 'England', 'England', 'Will Jacks', 3),
(4, 'Pakistan', 'Pakistan', 'Mike Hesson', 4),
(5, 'New Zealand', 'New Zealand', 'Gary Stead', 5),
(6, 'South Africa', 'South Africa', 'Shukri Conrad', 6),
(7, 'Afghanisthan', 'Afghanisthan', 'Rakshid Khan', 1),
(8, 'Ireland', 'Ireland', 'Andrew Salt', 2),
(9, 'Bangladesh', 'Bangladesh', 'Markram', 3),
(10, 'Zimbabwe', 'Zimbabwe', 'Srijian', 4);


CREATE TABLE Matches (
    Match_ID INT PRIMARY KEY,
    Team1_ID INT,
    Team2_ID INT,
    Match_Date DATE,
    Venue VARCHAR(100),
    Match_Type VARCHAR(30),
    Winner_ID INT,
    FOREIGN KEY (Team1_ID) REFERENCES TEAM(Team_ID),
    FOREIGN KEY (Team2_ID) REFERENCES TEAM(Team_ID),
    FOREIGN KEY (Winner_ID) REFERENCES TEAM(Team_ID)
);

INSERT INTO Matches VALUES
(201, 1, 2, '2026-01-15', 'Mumbai', 'ODI', 1),
(202, 3, 4, '2026-02-10', 'London', 'T20', 3),
(203, 1, 3, '2026-03-05', 'Chennai', 'Test', 1),
(204, 2, 5, '2026-04-12', 'Srilana', 'ODI', 2),
(205, 4, 6, '2026-05-20', 'Lakeum', 'T20', 4),
(206, 1, 5, '2026-06-15', 'Bengaluru', 'ODI', 1),
(207, 2, 3, '2026-07-10', 'Mumbai', 'Test', 2),
(208, 5, 6, '2026-07-25', 'Ameerpet', 'T20', 5),
(209, 1, 4, '2026-08-05', 'Delhi', 'ODI', 1),
(210, 3, 5, '2026-08-20', 'Munnar', 'T20', 3);

CREATE TABLE Player_Performance (
    Performance_ID INT PRIMARY KEY,
    Match_ID INT,
    Player_ID INT,
    Runs INT,
    Wickets INT,
    Catches INT,
    FOREIGN KEY (Match_ID) REFERENCES Matches(Match_ID),
    FOREIGN KEY (Player_ID) REFERENCES Player(Player_ID)
);

INSERT INTO Player_Performance VALUES
(301, 201, 101, 85, 0, 2),
(302, 202, 102, 72, 0, 1),
(303, 203, 103, 15, 4, 1),
(304, 204, 104, 91, 0, 2),
(305, 205, 105, 10, 3, 0),
(306, 206, 106, 78, 0, 1),
(307, 207, 107, 45, 2, 2),
(308, 208, 108, 65, 0, 1),
(309, 209, 109, 12, 3, 0),
(310, 210, 110, 120, 1, 3);


CREATE TABLE Match_Offical (
    Official_ID INT PRIMARY KEY,
    Official_Name VARCHAR(50),
    Role VARCHAR(30),
    Country VARCHAR(50),
    Match_ID INT,
    FOREIGN KEY (Match_ID) REFERENCES Matches(Match_ID)
);

INSERT INTO Match_Offical VALUES
(401, 'Babu Mohan', 'Umpire', 'England', 201),
(402, 'Shyam Kumar', 'Umpire', 'Sri Lanka', 202),
(403, 'Praveen Paul', 'Umpire', 'Australia', 203),
(404, 'Kalyan Ram', 'Umpire', 'India', 204),
(405, 'Aneesh', 'Umpire', 'Pakistan', 205),
(406, 'Balu kumar', 'Umpire', 'South Africa', 206),
(407, 'Munna', 'Umpire', 'New Zealand', 207),
(408, 'Raju', 'Umpire', 'England', 208),
(409, 'John', 'Umpire', 'Trinidad and Tobago', 209),
(410, 'Shanmukh', 'Umpire', 'Bangladesh', 210);

CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Booking_ID INT,
    Amount DECIMAL(10,2),
    Payment_Mode VARCHAR(20),
    Payment_Status VARCHAR(20)
);

INSERT INTO Payment VALUES
(501, 1001, 1500.00, 'UPI', 'Success'),
(502, 1002, 2200.00, 'Card', 'Success'),
(503, 1003, 1000.00, 'UPI', 'Pending'),
(504, 1004, 3500.00, 'Net Banking', 'Success'),
(505, 1005, 1800.00, 'Card', 'Failed'),
(506, 1006, 2500.00, 'UPI', 'Success'),
(507, 1007, 1500.00, 'Credit Card', 'Failed'),
(508, 1008, 2200.00, 'Debit Card', 'Success'),
(509, 1009, 1000.00, 'UPI', 'Pending'),
(510, 1010, 3500.00, 'Net Banking', 'Success');


SELECT player_Name, Country
FROM Player
WHERE Role='Batsman' AND Age>25;

SELECT player_Name
FROM Player
WHERE Country='India' OR 'Australia' And Age>30 ;

SELECT * FROM Teams
WHERE Ranking <=10 AND Country='India';

SELECT Match_Id ,Venue,Match_Type
FROM Matches
WHERE Match_Type='T20' AND Venue='Chennai';

SELECT Player_Id, Runs ,Wickets
FROM  Palyer
WHERE Runs>=50 OR Wickets>=2;

SELECT DISTINCT Country
FROM Player;

SELECT DISTINCT Match_Type
FROM Matches;

SELECT Player_Name
FROM Player
WHERE Player_Name LIKE 'S%' AND Country = 'India';

SELECT COUNT(*) AS Total_Indian_Players
FROM Player
WHERE Country = 'India';

SELECT MAX(Runs) AS Maximum_Runs
FROM Player_Performance;

SELECT AVG(Runs) AS Average_Runs
FROM Player_Performance
WHERE Runs > 20;

SELECT SUM(Wickets) AS Total_Wickets
FROM Player_Performance;

SELECT 
    MIN(Catches) AS Minimum_Catches,
    MAX(Catches) AS Maximum_Catches,
    AVG(Catches) AS Average_Catches
FROM Player_Performance;


SELECT Role, COUNT(*) AS Number_Of_Players
FROM Player WHERE Age > 25
GROUP BY Role;


SELECT Country, COUNT(*) AS Number_Of_Bowlers
FROM Player
WHERE Role = 'Bowler'
GROUP BY Country;


SELECT Player_ID, SUM(Runs) AS Total_Runs
FROM Player_Performance
WHERE Runs > 20
GROUP BY Player_ID;

SELECT Match_ID, SUM(Wickets) AS Total_Wickets
FROM Player_Performance
WHERE Wickets > 0
GROUP BY Match_ID;


SELECT Country, COUNT(*) AS Number_Of_Players
FROM Player
GROUP BY Country
HAVING COUNT(*) > 2;

SELECT Player_ID, SUM(Runs) AS Total_Runs
FROM Player_Performance
GROUP BY Player_ID
HAVING SUM(Runs) > 100;


SELECT Match_ID, SUM(Wickets) AS Total_Wickets
FROM Player_Performance
GROUP BY Match_ID
HAVING SUM(Wickets) > 3;


SELECT Player_ID, SUM(Runs) AS Total_Runs
FROM Player_Performance
GROUP BY Player_ID
HAVING SUM(Runs) > 100
ORDER BY Total_Runs DESC;


SELECT Player_ID, AVG(Runs) AS Average_Runs
FROM Player_Performance
GROUP BY Player_ID
HAVING AVG(Runs) > 30
ORDER BY Average_Runs ASC;


UPDATE Team SET Ranking = 1
WHERE Team_ID = 101;

UPDATE Player
SET Age = Age + 1
WHERE Age > 30 AND Role = 'Batsman';

UPDATE Player_Performance
SET Catches = Catches + 1
WHERE Wickets > 2 AND Catches < 3;

DELETE FROM Player
WHERE Age > 45 AND Country <> 'India';

DELETE FROM Player_Performance
WHERE Runs < 5 AND Wickets = 0;

DELETE FROM Team
WHERE Ranking > 15 AND Country = 'India';



SELECT 
    P.Player_Name,
    P.Role,
    PP.Runs
FROM Player P
JOIN Player_Performance PP
ON P.Player_ID = PP.Player_ID;


SELECT 
    T.Team_Name,
    M.Match_Date,
    M.Venue
FROM Team T
JOIN Matches M
ON T.Team_ID = M.Team1_ID;


SELECT 
    P.Player_Name,
    PP.Match_ID,
    PP.Runs,
    PP.Wickets
FROM Player P
JOIN Player_Performance PP
ON P.Player_ID = PP.Player_ID
WHERE PP.Runs > 50;


SELECT 
    P.Player_Name,
    M.Match_Date,
    M.Venue,
    PP.Runs
FROM Player P
JOIN Player_Performance PP
ON P.Player_ID = PP.Player_ID
JOIN Matches M
ON PP.Match_ID = M.Match_ID;


SELECT 
    P.Player_Name,
    M.Match_Type,
    M.Venue,
    PP.Wickets
FROM Player P
JOIN Player_Performance PP
ON P.Player_ID = PP.Player_ID
JOIN Matches M
ON PP.Match_ID = M.Match_ID
WHERE PP.Wickets > 2;




SELECT DISTINCT P.Player_Name
FROM Player P
JOIN Player_Performance PP
ON P.Player_ID = PP.Player_ID
WHERE PP.Runs > (
    SELECT AVG(Runs)
    FROM Player_Performance
);


SELECT P.Player_Name, SUM(PP.Runs) AS Total_Runs
FROM Player P
JOIN Player_Performance PP
ON P.Player_ID = PP.Player_ID
GROUP BY P.Player_ID, P.Player_Name
HAVING SUM(PP.Runs) > (
    SELECT SUM(Runs)
    FROM Player_Performance
    WHERE Player_ID = 101
);


SELECT * FROM Player;
SELECT * FROM Team;
SELECT * FROM Matches;
SELECT * FROM Player_performance;
SELECT * FROM Match_Offical;
SELECT * FROM Payment;