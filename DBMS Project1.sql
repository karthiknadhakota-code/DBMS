CREATE DATABASE Smart_Complaint_DB;

USE Smart_Complaint_DB;


CREATE TABLE Roles (
    Role_ID            INT            PRIMARY KEY ,
    Role_Name          VARCHAR(50)    NOT NULL UNIQUE,
    Description        VARCHAR(200)   NULL,
    Access_Level       VARCHAR(20)    NOT NULL,
    Status             VARCHAR(20)    NOT NULL,
    Created_Date       DATE           NOT NULL,
    Can_Create         VARCHAR(5)     NOT NULL,
    Can_Update         VARCHAR(5)     NOT NULL,
    Can_Delete         VARCHAR(5)     NOT NULL,
    Can_View           VARCHAR(5)     NOT NULL
);

INSERT INTO Roles VALUES
(101,'Citizen','Can submit complaints','Basic','Active','2026-01-01','Yes','No','No','Yes'),
(102,'Registered User','Registered complaint user','Basic','Active','2026-01-02','Yes','Yes','No','Yes'),
(103,'Student','Student reporting issues','Basic','Active','2026-01-03','Yes','Yes','No','Yes'),
(104,'Resident','Local resident reporting issues','Basic','Active','2026-01-04','Yes','Yes','No','Yes'),
(105,'Complainant','Person submitting complaints','Basic','Active','2026-01-05','Yes','Yes','No','Yes'),
(106,'Guest User','Limited access user','Limited','Active','2026-01-06','Yes','No','No','Yes'),
(107,'Reporter','Person reporting issues','Basic','Active','2026-01-07','Yes','Yes','No','Yes'),
(108,'Community Member','Community issue reporter','Basic','Active','2026-01-08','Yes','Yes','No','Yes'),
(109,'Volunteer','Volunteer issue reporter','Basic','Active','2026-01-09','Yes','Yes','No','Yes'),
(110,'Department Staff','Handles assigned complaints','Medium','Active','2026-01-10','Yes','Yes','No','Yes'),
(111,'Support Staff','Provides complaint support','Medium','Active','2026-01-11','Yes','Yes','No','Yes'),
(112,'Field Staff','Handles field complaints','Medium','Active','2026-01-12','Yes','Yes','No','Yes'),
(113,'Technical Staff','Handles technical issues','Medium','Active','2026-01-13','Yes','Yes','No','Yes'),
(114,'Maintenance Staff','Handles maintenance issues','Medium','Active','2026-01-14','Yes','Yes','No','Yes'),
(115,'Complaint Handler','Handles complaints','Medium','Active','2026-01-15','Yes','Yes','No','Yes'),
(116,'Verification Officer','Verifies complaints','Medium','Active','2026-01-16','Yes','Yes','No','Yes'),
(117,'Inspection Officer','Inspects reported issues','Medium','Active','2026-01-17','Yes','Yes','No','Yes'),
(118,'Assignment Officer','Assigns complaints','High','Active','2026-01-18','Yes','Yes','No','Yes'),
(119,'Department Officer','Manages department complaints','High','Active','2026-01-19','Yes','Yes','Yes','Yes'),
(120,'Team Leader','Supervises complaint teams','High','Active','2026-01-20','Yes','Yes','Yes','Yes');

CREATE TABLE Departments (
    Department_ID       INT            PRIMARY KEY ,
    Department_Name     VARCHAR(100)   NOT NULL UNIQUE,
    Department_Code     VARCHAR(5)     NOT NULL UNIQUE,
    Description         VARCHAR(200)   NULL,
    Phone               VARCHAR(15)    UNIQUE,
    Email               VARCHAR(100)   UNIQUE,
    Office_Location     VARCHAR(150)   NOT NULL,
    Status              VARCHAR(20)    NOT NULL,
    Created_Date        DATE           NOT NULL,
    Working_Hours       VARCHAR(50)    NULL
);

INSERT INTO Departments VALUES
(201,'Water Supply Department','WATER','Handles water supply and leakage complaints','9876500001','water@complaints.com','Main Municipal Office','Active','2026-01-01','09:00 AM - 05:00 PM'),
(202,'Electricity Department','ELEC1','Handles electricity related complaints','9876500002','electricity@complaints.com','Electricity Office','Active','2026-01-02','09:00 AM - 05:00 PM'),
(203,'Road Maintenance Department','ROAD1','Handles road damage and maintenance','9876500003','roads@complaints.com','Road Maintenance Office','Active','2026-01-03','09:00 AM - 05:00 PM'),
(204,'Waste Management Department','WASTE','Handles garbage and waste complaints','9876500004','waste@complaints.com','Waste Management Office','Active','2026-01-04','08:00 AM - 04:00 PM'),
(205,'Public Health Department','HEALT','Handles public health related issues','9876500005','health@complaints.com','Public Health Office','Active','2026-01-05','09:00 AM - 05:00 PM'),
(206,'Public Safety Department','SAFE1','Handles public safety complaints','9876500006','safety@complaints.com','Safety Control Office','Active','2026-01-06','24 Hours'),
(207,'Transport Department','TRANS','Handles public transport complaints','9876500007','transport@complaints.com','Transport Office','Active','2026-01-07','09:00 AM - 05:00 PM'),
(208,'Traffic Department','TRAFF','Handles traffic and signal complaints','9876500008','traffic@complaints.com','Traffic Control Office','Active','2026-01-08','24 Hours'),
(209,'Building Maintenance Department','BUILD','Handles building maintenance issues','9876500009','building@complaints.com','Building Maintenance Office','Active','2026-01-09','09:00 AM - 05:00 PM'),
(210,'Public Facility Department','FACIL','Handles public facility complaints','9876500010','facility@complaints.com','Public Facility Office','Active','2026-01-10','09:00 AM - 05:00 PM'),
(211,'Internet Services Department','INTER','Handles internet and connectivity complaints','9876500011','internet@complaints.com','IT Service Office','Active','2026-01-11','09:00 AM - 06:00 PM'),
(212,'Information Technology Department','ITDEP','Handles technical and system complaints','9876500012','it@complaints.com','IT Department Office','Active','2026-01-12','09:00 AM - 06:00 PM'),
(213,'Street Lighting Department','LIGHT','Handles street light complaints','9876500013','lighting@complaints.com','Street Lighting Office','Active','2026-01-13','06:00 AM - 10:00 PM'),
(214,'Drainage Department','DRAIN','Handles drainage and sewage complaints','9876500014','drainage@complaints.com','Drainage Office','Active','2026-01-14','08:00 AM - 05:00 PM'),
(215,'Fire Safety Department','FIRE1','Handles fire safety related complaints','9876500015','fire@complaints.com','Fire Safety Office','Active','2026-01-15','24 Hours'),
(216,'Environmental Department','ENVIR','Handles environmental complaints','9876500016','environment@complaints.com','Environmental Office','Active','2026-01-16','09:00 AM - 05:00 PM'),
(217,'Parks and Recreation Department','PARKS','Handles parks and recreation facilities','9876500017','parks@complaints.com','Parks Department Office','Active','2026-01-17','08:00 AM - 05:00 PM'),
(218,'Animal Control Department','ANIMA','Handles stray animal related complaints','9876500018','animals@complaints.com','Animal Control Office','Active','2026-01-18','08:00 AM - 05:00 PM'),
(219,'Education Department','EDUCA','Handles education and college related issues','9876500019','education@complaints.com','Education Office','Active','2026-01-19','09:00 AM - 05:00 PM'),
(220,'Sanitation Department','SANIT','Handles sanitation and cleanliness complaints','9876500020','sanitation@complaints.com','Sanitation Office','Active','2026-01-20','08:00 AM - 04:00 PM');


CREATE TABLE Statuses (
    Status_ID          INT            PRIMARY KEY ,
    Status_Name        VARCHAR(50)    NOT NULL UNIQUE,
    Description        VARCHAR(200)   NULL,
    Status_Order       INT            NOT NULL,
    Status_Type        VARCHAR(30)    NOT NULL,
    Is_Final           VARCHAR(5)     NOT NULL,
    Is_Active          VARCHAR(5)     NOT NULL,
    Color_Code         VARCHAR(20)    NULL,
    Created_Date       DATE           NOT NULL,
    Updated_Date       DATE           NULL
);

INSERT INTO Statuses VALUES
(301,'Submitted','Complaint has been submitted',1,'Open','No','Yes','Blue','2026-01-01',NULL),
(302,'Received','Complaint received by the system',2,'Open','No','Yes','Sky Blue','2026-01-02',NULL),
(303,'Under Review','Complaint is under review',3,'Processing','No','Yes','Yellow','2026-01-03',NULL),
(304,'Verified','Complaint has been verified',4,'Processing','No','Yes','Light Green','2026-01-04',NULL),
(305,'Assigned','Complaint assigned to staff',5,'Processing','No','Yes','Orange','2026-01-05',NULL),
(306,'Accepted','Staff accepted the complaint',6,'Processing','No','Yes','Gold','2026-01-06',NULL),
(307,'Inspection Scheduled','Inspection has been scheduled',7,'Processing','No','Yes','Purple','2026-01-07',NULL),
(308,'Inspection Completed','Inspection completed successfully',8,'Processing','No','Yes','Violet','2026-01-08',NULL),
(309,'In Progress','Work is currently in progress',9,'Processing','No','Yes','Dark Blue','2026-01-09',NULL),
(310,'Pending Approval','Awaiting manager approval',10,'Processing','No','Yes','Brown','2026-01-10',NULL),
(311,'Approved','Complaint resolution approved',11,'Processing','No','Yes','Green','2026-01-11',NULL),
(312,'Escalated','Complaint escalated to higher authority',12,'Escalation','No','Yes','Red','2026-01-12',NULL),
(313,'Reassigned','Complaint reassigned to another staff member',13,'Processing','No','Yes','Dark Orange','2026-01-13',NULL),
(314,'Waiting for User Response','Awaiting response from complainant',14,'Pending','No','Yes','Pink','2026-01-14',NULL),
(315,'On Hold','Complaint temporarily paused',15,'Pending','No','Yes','Gray','2026-01-15',NULL),
(316,'Resolved','Issue has been resolved',16,'Closed','No','Yes','Dark Green','2026-01-16',NULL),
(317,'User Confirmed','User confirmed the resolution',17,'Closed','No','Yes','Sea Green','2026-01-17',NULL),
(318,'Closed','Complaint officially closed',18,'Closed','Yes','Yes','Black','2026-01-18',NULL),
(319,'Rejected','Complaint rejected after review',19,'Closed','Yes','Yes','Dark Red','2026-01-19',NULL),
(320,'Cancelled','Complaint cancelled by user or admin',20,'Closed','Yes','Yes','Maroon','2026-01-20',NULL);


CREATE TABLE Priorities (
    Priorities        INT            PRIMARY KEY ,
    Priority_Name       VARCHAR(30)    NOT NULL UNIQUE,
    Priority_Level      VARCHAR(20)    NOT NULL,
    Response_Hours      INT            NOT NULL,
    Resolution_Hours    INT            NOT NULL,
    Description         VARCHAR(200)   NULL,
    Color_Code          VARCHAR(20)    NULL,
    Status              VARCHAR(20)    NOT NULL,
    Created_Date        DATE           NOT NULL,
    Updated_Date        DATE           NULL
);

INSERT INTO Priorities VALUES
(401,'Low','Level 1',24,72,'Minor issue with low impact','Green','Active','2026-01-01','2026-01-05'),
(402,'Medium','Level 2',12,48,'Moderate issue requiring attention','Blue','Active','2026-01-02','2026-01-06'),
(403,'High','Level 3',6,24,'Important issue affecting users','Orange','Active','2026-01-03','2026-01-07'),
(404,'Critical','Level 4',1,12,'Critical issue needing immediate action','Red','Active','2026-01-04','2026-01-08'),
(405,'Emergency','Level 5',1,6,'Emergency affecting public safety','Dark Red','Active','2026-01-05','2026-01-09'),
(406,'Routine','Level 1',48,120,'Routine maintenance issue','Light Green','Active','2026-01-06','2026-01-10'),
(407,'Informational','Level 1',72,168,'Information-only request','Gray','Active','2026-01-07','2026-01-11'),
(408,'Service Request','Level 2',24,96,'Request for a public service','Sky Blue','Active','2026-01-08','2026-01-12'),
(409,'Maintenance','Level 2',18,72,'Maintenance-related issue','Teal','Active','2026-01-09','2026-01-13'),
(410,'Infrastructure','Level 3',8,36,'Infrastructure-related complaint','Brown','Active','2026-01-10','2026-01-14'),
(411,'Utility','Level 3',6,30,'Utility service interruption','Dark Blue','Active','2026-01-11','2026-01-15'),
(412,'Safety Alert','Level 4',2,12,'Potential public safety concern','Crimson','Active','2026-01-12','2026-01-16'),
(413,'Health Concern','Level 4',3,18,'Public health-related issue','Purple','Active','2026-01-13','2026-01-17'),
(414,'Environmental','Level 3',10,48,'Environmental complaint','Olive','Active','2026-01-14','2026-01-18'),
(415,'Traffic Issue','Level 2',12,60,'Traffic management issue','Yellow','Active','2026-01-15','2026-01-19'),
(416,'Road Hazard','Level 4',4,24,'Dangerous road condition','Orange Red','Active','2026-01-16','2026-01-20'),
(417,'Water Supply','Level 3',8,36,'Water service disruption','Aqua','Active','2026-01-17','2026-01-21'),
(418,'Power Failure','Level 5',1,8,'Major power outage','Black','Active','2026-01-18','2026-01-22'),
(419,'Escalated','Level 5',1,4,'Issue escalated to higher authority','Dark Purple','Active','2026-01-19','2026-01-23'),
(420,'Special Case','Level 3',6,24,'Special handling required','Gold','Active','2026-01-20','2026-01-24');


CREATE TABLE Categories (
    Category_ID          INT             PRIMARY KEY ,
    Category_Name        VARCHAR(100)    NOT NULL UNIQUE,
    Category_Code        CHAR(5)         NOT NULL UNIQUE,
    Description          VARCHAR(200)    NULL,
    Status               VARCHAR(20)     NOT NULL,
    Created_Date         DATE            NOT NULL,
    Updated_Date         DATE            NULL,
    Is_Recurring         VARCHAR(5)      NOT NULL,
    Display_Order        INT             NOT NULL,
    Keywords             VARCHAR(300)    NULL
);

INSERT INTO Categories VALUES
(501,'Water Supply','WATR1','Issues related to water supply and leakage','Active','2026-01-01','2026-01-05','Yes',1,'water,leakage,pipeline,supply'),
(502,'Electricity','ELEC1','Power outage and electrical issues','Active','2026-01-02','2026-01-06','Yes',2,'electricity,power,outage,voltage'),
(503,'Road Maintenance','ROAD1','Road damage and pothole complaints','Active','2026-01-03','2026-01-07','Yes',3,'road,pothole,street,repair'),
(504,'Waste Management','WAST1','Garbage collection and waste disposal','Active','2026-01-04','2026-01-08','Yes',4,'waste,garbage,collection,cleaning'),
(505,'Public Health','HLTH1','Health and sanitation issues','Active','2026-01-05','2026-01-09','Yes',5,'health,sanitation,disease,hygiene'),
(506,'Public Safety','SAFE1','Safety and security concerns','Active','2026-01-06','2026-01-10','Yes',6,'safety,security,danger,risk'),
(507,'Traffic Management','TRAF1','Traffic congestion and signals','Active','2026-01-07','2026-01-11','Yes',7,'traffic,signal,jam,road'),
(508,'Transportation','TRAN1','Public transportation services','Active','2026-01-08','2026-01-12','Yes',8,'bus,transport,vehicle,travel'),
(509,'Street Lighting','LGHT1','Street light maintenance issues','Active','2026-01-09','2026-01-13','Yes',9,'light,street,dark,pole'),
(510,'Drainage','DRAN1','Drainage and sewage complaints','Active','2026-01-10','2026-01-14','Yes',10,'drainage,sewage,water,overflow'),
(511,'Internet Services','NET01','Internet and network issues','Active','2026-01-11','2026-01-15','Yes',11,'internet,wifi,network,connection'),
(512,'Public Facilities','FACI1','Issues in public facilities','Active','2026-01-12','2026-01-16','Yes',12,'facility,park,toilet,building'),
(513,'Environmental','ENVR1','Environmental concerns and pollution','Active','2026-01-13','2026-01-17','Yes',13,'pollution,environment,air,noise'),
(514,'Animal Control','ANML1','Stray animal and pet issues','Active','2026-01-14','2026-01-18','Yes',14,'animal,dog,cat,stray'),
(515,'Housing','HOUS1','Housing and residential complaints','Active','2026-01-15','2026-01-19','No',15,'house,residence,building,property'),
(516,'Parking','PARK1','Parking violations and issues','Active','2026-01-16','2026-01-20','Yes',16,'parking,vehicle,space,illegal'),
(517,'Emergency Services','EMRG1','Emergency response services','Active','2026-01-17','2026-01-21','Yes',17,'emergency,ambulance,fire,rescue'),
(518,'Consumer Services','CONS1','Consumer service complaints','Active','2026-01-18','2026-01-22','No',18,'consumer,service,customer,support'),
(519,'Communication Services','COMM1','Telecommunication issues','Active','2026-01-19','2026-01-23','Yes',19,'communication,mobile,network,call'),
(520,'Administrative Services','ADMN1','Administrative and office issues','Active','2026-01-20','2026-01-24','No',20,'administration,office,document,service');


CREATE TABLE Locations (
    Location_ID         INT               PRIMARY KEY ,
    Address             VARCHAR(200)      NOT NULL,
    Area                VARCHAR(100)      NOT NULL,
    City                VARCHAR(100)      NOT NULL,
    District            VARCHAR(100)      NULL,
    State               VARCHAR(100)      NOT NULL,
    Pincode             VARCHAR(6)        NOT NULL,
    Location_Type       VARCHAR(50)       NOT NULL,
    Latitude            VARCHAR(20)       NULL,
    Longitude           VARCHAR(20)       NULL
);

INSERT INTO Locations VALUES
(601,'MG Road','Central','Kozhikode','Kozhikode','Kerala','673001','Urban','11.2588','75.7804'),
(602,'Beach Road','Beach Area','Kozhikode','Kozhikode','Kerala','673032','Urban','11.2740','75.7680'),
(603,'Civil Station Road','Civil Station','Kozhikode','Kozhikode','Kerala','673020','Government','11.2565','75.7812'),
(604,'Medical College Road','Chevayur','Kozhikode','Kozhikode','Kerala','673008','Hospital','11.2735','75.8360'),
(605,'NH 66 Junction','Ramanattukara','Kozhikode','Kozhikode','Kerala','673633','Highway','11.1790','75.8670'),
(606,'Town Hall Road','Palayam','Thiruvananthapuram','Thiruvananthapuram','Kerala','695033','Urban','8.5241','76.9366'),
(607,'Marine Drive','Ernakulam','Kochi','Ernakulam','Kerala','682011','Urban','9.9816','76.2750'),
(608,'Temple Road','Thrissur Town','Thrissur','Thrissur','Kerala','680001','Urban','10.5276','76.2144'),
(609,'Bus Stand Road','Kannur Town','Kannur','Kannur','Kerala','670001','Transport','11.8745','75.3704'),
(610,'Market Road','Palakkad Town','Palakkad','Palakkad','Kerala','678001','Commercial','10.7867','76.6548'),
(611,'Railway Station Road','Kottayam','Kottayam','Kottayam','Kerala','686001','Transport','9.5916','76.5222'),
(612,'College Road','Manjeri','Malappuram','Malappuram','Kerala','676121','Educational','11.1202','76.1191'),
(613,'Airport Road','Nedumbassery','Kochi','Ernakulam','Kerala','683111','Airport','10.1520','76.3920'),
(614,'Harbour Road','Beypore','Kozhikode','Kozhikode','Kerala','673015','Port','11.1711','75.8043'),
(615,'Park Avenue','Vellayil','Kozhikode','Kozhikode','Kerala','673011','Park','11.2690','75.7832'),
(616,'IT Park Road','Cyber Park','Kozhikode','Kozhikode','Kerala','673016','Technology','11.2300','75.8900'),
(617,'Main Street','Vadakara','Kozhikode','Kozhikode','Kerala','673101','Urban','11.6075','75.5920'),
(618,'Station Road','Tirur','Malappuram','Malappuram','Kerala','676101','Transport','10.9167','75.9167'),
(619,'Court Road','Mananthavady','Wayanad','Wayanad','Kerala','670645','Government','11.8010','76.0004'),
(620,'Hill Road','Kalpetta','Wayanad','Wayanad','Kerala','673121','Residential','11.6085','76.0834');

CREATE TABLE Users (
    User_ID             INT               PRIMARY KEY ,
    Role_ID             INT               NOT NULL,
    Full_Name           VARCHAR(100)      NOT NULL,
    Email               VARCHAR(100)      NOT NULL UNIQUE,
    Phone               VARCHAR(15)       UNIQUE,
    Password            VARCHAR(255)      NOT NULL,
    Gender              VARCHAR(10)       NULL,
    Registration_Date   DATE              NOT NULL,
    City                VARCHAR(100)      NULL,
    Account_Status      VARCHAR(20)       NOT NULL,

    FOREIGN KEY (Role_ID) REFERENCES Roles(Role_ID)
);

INSERT INTO Users VALUES
(701,101,'Akhil Nair','akhil1@gmail.com','9876501001','Pass@123','Male','2026-02-01','Kozhikode','Active'),
(702,102,'Anu Thomas','anu2@gmail.com','9876501002','Pass@123','Female','2026-02-02','Kochi','Active'),
(703,103,'Rahul Das','rahul3@gmail.com','9876501003','Pass@123','Male','2026-02-03','Kannur','Active'),
(704,104,'Meera Joseph','meera4@gmail.com','9876501004','Pass@123','Female','2026-02-04','Thrissur','Active'),
(705,105,'Arjun Kumar','arjun5@gmail.com','9876501005','Pass@123','Male','2026-02-05','Palakkad','Active'),
(706,106,'Sneha Roy','sneha6@gmail.com','9876501006','Pass@123','Female','2026-02-06','Kozhikode','Active'),
(707,107,'Nikhil Raj','nikhil7@gmail.com','9876501007','Pass@123','Male','2026-02-07','Kochi','Active'),
(708,108,'Athira P','athira8@gmail.com','9876501008','Pass@123','Female','2026-02-08','Kannur','Active'),
(709,109,'Vishnu M','vishnu9@gmail.com','9876501009','Pass@123','Male','2026-02-09','Malappuram','Active'),
(710,110,'Aswin K','aswin10@gmail.com','9876501010','Pass@123','Male','2026-02-10','Kozhikode','Active'),
(711,111,'Devika S','devika11@gmail.com','9876501011','Pass@123','Female','2026-02-11','Thrissur','Active'),
(712,112,'Abhinav P','abhinav12@gmail.com','9876501012','Pass@123','Male','2026-02-12','Kochi','Active'),
(713,113,'Keerthana R','keerthana13@gmail.com','9876501013','Pass@123','Female','2026-02-13','Palakkad','Active'),
(714,114,'Fahad Ali','fahad14@gmail.com','9876501014','Pass@123','Male','2026-02-14','Kozhikode','Active'),
(715,115,'Anjali N','anjali15@gmail.com','9876501015','Pass@123','Female','2026-02-15','Kannur','Active'),
(716,116,'Rohit V','rohit16@gmail.com','9876501016','Pass@123','Male','2026-02-16','Kochi','Active'),
(717,117,'Nandana K','nandana17@gmail.com','9876501017','Pass@123','Female','2026-02-17','Thrissur','Active'),
(718,118,'Jithin P','jithin18@gmail.com','9876501018','Pass@123','Male','2026-02-18','Kozhikode','Active'),
(719,119,'Arya S','arya19@gmail.com','9876501019','Pass@123','Female','2026-02-19','Palakkad','Active'),
(720,120,'Shyam K','shyam20@gmail.com','9876501020','Pass@123','Male','2026-02-20','Malappuram','Active'),
(721,101,'Neha B','neha21@gmail.com','9876501021','Pass@123','Female','2026-02-21','Kochi','Active'),
(722,102,'Adil Rahman','adil22@gmail.com','9876501022','Pass@123','Male','2026-02-22','Kannur','Active'),
(723,103,'Parvathy M','parvathy23@gmail.com','9876501023','Pass@123','Female','2026-02-23','Thrissur','Active'),
(724,104,'Alan George','alan24@gmail.com','9876501024','Pass@123','Male','2026-02-24','Kozhikode','Active'),
(725,105,'Nimisha P','nimisha25@gmail.com','9876501025','Pass@123','Female','2026-02-25','Kottayam','Active'),
(726,106,'Riyas K','riyas26@gmail.com','9876501026','Pass@123','Male','2026-02-26','Kochi','Active'),
(727,107,'Aiswarya T','aiswarya27@gmail.com','9876501027','Pass@123','Female','2026-02-27','Kannur','Active'),
(728,108,'Manu S','manu28@gmail.com','9876501028','Pass@123','Male','2026-02-28','Kozhikode','Active'),
(729,109,'Reshma V','reshma29@gmail.com','9876501029','Pass@123','Female','2026-03-01','Thrissur','Active'),
(730,110,'Sarath P','sarath30@gmail.com','9876501030','Pass@123','Male','2026-03-02','Kochi','Active');



CREATE TABLE Staff (
    Staff_ID              INT              PRIMARY KEY ,
    User_ID               INT              NOT NULL UNIQUE,
    Department_ID         INT              NOT NULL,
    Employee_Code         CHAR(8)          NOT NULL UNIQUE,
    Designation           VARCHAR(80)      NOT NULL,
    Joining_Date          DATE             NOT NULL,
    Specialization        VARCHAR(100)     NULL,
    Staff_Status          VARCHAR(20)      NOT NULL,
    Work_Email            VARCHAR(100)     UNIQUE,
    Work_Phone VARCHAR(15) UNIQUE,

    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

INSERT INTO Staff VALUES
(801,710,201,'EMP00001','Water Supply Officer','2024-01-10','Water Pipeline','Active','staff01@complaints.com','9876510001'),
(802,711,202,'EMP00002','Electrical Technician','2024-02-15','Electrical Maintenance','Active','staff02@complaints.com','9876510002'),
(803,712,203,'EMP00003','Road Maintenance Officer','2024-03-12','Road Repair','Active','staff03@complaints.com','9876510003'),
(804,713,204,'EMP00004','Waste Management Officer','2024-04-18','Waste Collection','Active','staff04@complaints.com','9876510004'),
(805,714,205,'EMP00005','Health Inspector','2024-05-20','Public Health','Active','staff05@complaints.com','9876510005'),
(806,715,206,'EMP00006','Safety Officer','2024-06-14','Public Safety','Active','staff06@complaints.com','9876510006'),
(807,716,207,'EMP00007','Transport Officer','2024-07-22','Public Transport','Active','staff07@complaints.com','9876510007'),
(808,717,208,'EMP00008','Traffic Officer','2024-08-11','Traffic Management','Active','staff08@complaints.com','9876510008'),
(809,718,209,'EMP00009','Lighting Technician','2024-09-16','Street Lighting','Active','staff09@complaints.com','9876510009'),
(810,719,210,'EMP00010','Facility Officer','2024-10-05','Public Facilities','Active','staff10@complaints.com','9876510010'),
(811,720,211,'EMP00011','Network Technician','2024-10-20','Internet Services','Active','staff11@complaints.com','9876510011'),
(812,721,212,'EMP00012','IT Support Officer','2024-11-12','Information Technology','Active','staff12@complaints.com','9876510012'),
(813,722,213,'EMP00013','Drainage Officer','2024-11-25','Drainage Maintenance','Active','staff13@complaints.com','9876510013'),
(814,723,214,'EMP00014','Environmental Officer','2024-12-10','Environmental Services','Active','staff14@complaints.com','9876510014'),
(815,724,215,'EMP00015','Emergency Officer','2025-01-08','Emergency Services','Active','staff15@complaints.com','9876510015'),
(816,725,216,'EMP00016','Animal Control Officer','2025-02-14','Animal Control','Active','staff16@complaints.com','9876510016'),
(817,726,217,'EMP00017','Housing Officer','2025-03-18','Housing Services','Active','staff17@complaints.com','9876510017'),
(818,727,218,'EMP00018','Parking Officer','2025-04-22','Parking Management','Active','staff18@complaints.com','9876510018'),
(819,728,219,'EMP00019','Communication Officer','2025-05-16','Communication Services','Active','staff19@complaints.com','9876510019'),
(820,729,220,'EMP00020','Administrative Officer','2025-06-10','Administrative Services','Active','staff20@complaints.com','9876510020');


CREATE TABLE ResolutionTypes (
    ResolutionType_ID        INT              PRIMARY KEY,
    Department_ID            INT              NOT NULL UNIQUE,
    Resolution_Name          VARCHAR(100)     NOT NULL UNIQUE,
    Description              VARCHAR(200)     NULL,
    Estimated_Days           INT              NOT NULL,
    Status                   VARCHAR(20)      NOT NULL,
    Requires_Visit           VARCHAR(5)       NOT NULL,
    Requires_Approval        VARCHAR(5)       NOT NULL,
    Created_Date             DATE             NOT NULL,
    Updated_Date             DATE             NULL,
    
    FOREIGN KEY (Department_ID)REFERENCES Departments (Department_ID)
);

INSERT INTO ResolutionTypes VALUES
(901,201,'Pipeline Repair','Repair damaged water pipelines',3,'Active','Yes','No','2026-01-01','2026-01-05'),
(902,202,'Electrical Repair','Repair electrical faults and wiring',2,'Active','Yes','No','2026-01-02','2026-01-06'),
(903,203,'Road Repair','Repair damaged roads and potholes',5,'Active','Yes','Yes','2026-01-03','2026-01-07'),
(904,204,'Waste Collection','Collect and remove accumulated waste',2,'Active','Yes','No','2026-01-04','2026-01-08'),
(905,205,'Health Inspection','Inspect public health related issues',4,'Active','Yes','Yes','2026-01-05','2026-01-09'),
(906,206,'Safety Inspection','Inspect and resolve public safety issues',2,'Active','Yes','Yes','2026-01-06','2026-01-10'),
(907,207,'Transport Service','Resolve public transport complaints',4,'Active','Yes','No','2026-01-07','2026-01-11'),
(908,208,'Traffic Signal Repair','Repair damaged traffic signals',2,'Active','Yes','No','2026-01-08','2026-01-12'),
(909,209,'Street Light Repair','Repair or replace street lights',3,'Active','Yes','No','2026-01-09','2026-01-13'),
(910,210,'Facility Maintenance','Repair public facilities',5,'Active','Yes','Yes','2026-01-10','2026-01-14'),
(911,211,'Internet Connection Repair','Resolve internet connectivity issues',2,'Active','No','No','2026-01-11','2026-01-15'),
(912,212,'Technical Support','Resolve technical and system issues',3,'Active','No','No','2026-01-12','2026-01-16'),
(913,213,'Drainage Cleaning','Clean blocked drains and drainage systems',3,'Active','Yes','No','2026-01-13','2026-01-17'),
(914,214,'Environmental Cleanup','Clean and resolve environmental issues',5,'Active','Yes','Yes','2026-01-14','2026-01-18'),
(915,215,'Emergency Response','Provide emergency response services',1,'Active','Yes','Yes','2026-01-15','2026-01-19'),
(916,216,'Animal Removal','Handle stray animal complaints',2,'Active','Yes','No','2026-01-16','2026-01-20'),
(917,217,'Housing Inspection','Inspect housing related complaints',5,'Active','Yes','Yes','2026-01-17','2026-01-21'),
(918,218,'Parking Enforcement','Resolve parking violations',2,'Active','Yes','No','2026-01-18','2026-01-22'),
(919,219,'Communication Repair','Resolve communication service issues',3,'Active','No','No','2026-01-19','2026-01-23'),
(920,220,'Administrative Review','Review and resolve administrative complaints',4,'Active','No','Yes','2026-01-20','2026-01-24');



CREATE TABLE SubCategories (
    SubCategory_ID             INT             PRIMARY KEY ,
    Category_ID                INT             NOT NULL,
    Priority_ID                INT             NOT NULL,
    SubCategory_Name           VARCHAR(100)    NOT NULL UNIQUE,
    Description                VARCHAR(200)    NULL,
    Status                     VARCHAR(20)     NOT NULL,
    Created_Date               DATE            NOT NULL,
    Updated_Date               DATE            NULL,
    Expected_Days              INT             NOT NULL,
    Keywords                   VARCHAR(300)    NULL,

    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID),
    FOREIGN KEY (Priority_ID) REFERENCES Priorities(Priority_ID)
);

INSERT INTO SubCategories VALUES
(1001,501,403,'Water Leakage','Leakage from water pipelines','Active','2026-02-01','2026-02-05',3,'water,leakage,pipeline'),
(1002,501,402,'Low Water Pressure','Low pressure in water supply','Active','2026-02-02','2026-02-06',2,'water,pressure,supply'),
(1003,502,405,'Power Outage','Complete electricity power failure','Active','2026-02-03','2026-02-07',1,'power,outage,electricity'),
(1004,502,403,'Voltage Problem','High or low voltage problem','Active','2026-02-04','2026-02-08',2,'voltage,electricity,power'),
(1005,503,404,'Pothole','Damaged road with potholes','Active','2026-02-05','2026-02-09',4,'road,pothole,damage'),
(1006,503,403,'Road Damage','Broken or damaged road surface','Active','2026-02-06','2026-02-10',5,'road,damage,repair'),
(1007,504,402,'Garbage Collection','Garbage not collected on time','Active','2026-02-07','2026-02-11',2,'garbage,waste,collection'),
(1008,504,403,'Illegal Dumping','Waste dumped in unauthorized areas','Active','2026-02-08','2026-02-12',3,'waste,dumping,garbage'),
(1009,505,404,'Public Hygiene','Poor hygiene in public areas','Active','2026-02-09','2026-02-13',4,'health,hygiene,cleaning'),
(1010,506,405,'Safety Hazard','Dangerous condition in public area','Active','2026-02-10','2026-02-14',1,'safety,hazard,danger'),
(1011,507,402,'Bus Delay','Delay in public bus services','Active','2026-02-11','2026-02-15',3,'bus,delay,transport'),
(1012,508,403,'Signal Failure','Traffic signal not working','Active','2026-02-12','2026-02-16',2,'traffic,signal,repair'),
(1013,509,403,'Street Light Failure','Street light not working','Active','2026-02-13','2026-02-17',3,'street,light,electricity'),
(1014,510,402,'Public Toilet Issue','Maintenance issue in public toilet','Active','2026-02-14','2026-02-18',3,'toilet,facility,cleaning'),
(1015,511,403,'Internet Disconnection','Internet connection frequently disconnects','Active','2026-02-15','2026-02-19',2,'internet,connection,network'),
(1016,512,402,'Computer System Issue','Problem with computer or system','Active','2026-02-16','2026-02-20',3,'computer,system,technical'),
(1017,513,403,'Blocked Drain','Drain blocked by waste or debris','Active','2026-02-17','2026-02-21',3,'drain,blockage,waste'),
(1018,514,403,'Air Pollution','Excessive air pollution complaint','Active','2026-02-18','2026-02-22',5,'air,pollution,environment'),
(1019,515,405,'Emergency Response','Delay in emergency service response','Active','2026-02-19','2026-02-23',1,'emergency,response,rescue'),
(1020,516,402,'Stray Animal','Stray animal causing public problems','Active','2026-02-20','2026-02-24',2,'animal,stray,dog');


CREATE TABLE Complaints (
    Complaint_ID                INT            PRIMARY KEY ,
    User_ID                     INT            NOT NULL,
    SubCategory_ID              INT            NOT NULL,
    Location_ID                 INT            NOT NULL,
    Status_ID                   INT            NOT NULL,
    Priority_ID                 INT            NOT NULL,
    ResolutionType_ID           INT            NULL,
    Complaint_Title             VARCHAR(150)   NOT NULL,
    Complaint_Description       TEXT           NOT NULL,
    Created_Date                DATETIME       NOT NULL,

    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (SubCategory_ID) REFERENCES SubCategories(SubCategory_ID),
    FOREIGN KEY (Location_ID) REFERENCES Locations(Location_ID),
    FOREIGN KEY (Status_ID) REFERENCES Statuses(Status_ID),
    FOREIGN KEY (Priority_ID) REFERENCES Priorities(Priority_ID),
    FOREIGN KEY (ResolutionType_ID) REFERENCES ResolutionTypes(ResolutionType_ID)
);

INSERT INTO Complaints VALUES
(1101,701,1001,601,301,403,901,'Water Pipeline Leakage','Water is leaking continuously from the main pipeline near the road.','2026-02-01 09:15:00'),
(1102,702,1002,602,303,402,901,'Low Water Pressure','Water pressure has been very low in the area for the past two days.','2026-02-02 10:30:00'),
(1103,703,1003,603,305,405,902,'Power Outage','There has been a complete power outage in the area since morning.','2026-02-03 08:45:00'),
(1104,704,1004,604,309,403,902,'Voltage Fluctuation','Frequent voltage fluctuations are affecting electrical appliances.','2026-02-04 11:20:00'),
(1105,705,1005,605,304,404,903,'Large Road Pothole','A large pothole has developed on the main road and is dangerous for vehicles.','2026-02-05 12:10:00'),
(1106,706,1006,606,309,403,903,'Damaged Road Surface','The road surface is badly damaged and requires immediate repair.','2026-02-06 14:25:00'),
(1107,707,1007,607,305,402,904,'Garbage Not Collected','Garbage has not been collected from the area for several days.','2026-02-07 09:40:00'),
(1108,708,1008,608,312,403,904,'Illegal Waste Dumping','Waste is being dumped illegally near the public road.','2026-02-08 15:30:00'),
(1109,709,1009,609,303,404,905,'Poor Public Hygiene','The public area is not being cleaned properly and has poor hygiene conditions.','2026-02-09 10:15:00'),
(1110,710,1010,610,305,405,906,'Public Safety Hazard','An unsafe structure near the public area may cause accidents.','2026-02-10 08:30:00'),
(1111,711,1011,611,303,402,907,'Bus Service Delay','The scheduled bus service is frequently delayed in this area.','2026-02-11 13:20:00'),
(1112,712,1012,612,309,403,908,'Traffic Signal Not Working','The traffic signal at the junction is not working properly.','2026-02-12 07:50:00'),
(1113,713,1013,613,305,403,909,'Street Light Failure','Several street lights are not working during the night.','2026-02-13 18:10:00'),
(1114,714,1014,614,303,402,910,'Public Toilet Maintenance','The public toilet requires cleaning and maintenance.','2026-02-14 11:45:00'),
(1115,715,1015,615,309,403,911,'Internet Disconnection','The internet connection keeps disconnecting throughout the day.','2026-02-15 16:25:00'),
(1116,716,1016,616,304,402,912,'Computer System Problem','The computer system is not working properly and requires technical support.','2026-02-16 09:55:00'),
(1117,717,1017,617,305,403,913,'Blocked Drain','The drainage system is blocked and wastewater is accumulating on the road.','2026-02-17 10:40:00'),
(1118,718,1018,618,303,403,914,'Air Pollution Complaint','Heavy smoke and air pollution are affecting residents in the area.','2026-02-18 14:15:00'),
(1119,719,1019,619,305,405,915,'Emergency Response Delay','Emergency service response was delayed during an urgent situation.','2026-02-19 20:05:00'),
(1120,720,1020,620,304,402,916,'Stray Animal Problem','Several stray animals are creating problems for people in the area.','2026-02-20 17:30:00');




CREATE TABLE Assignments (
    Assignment_ID                INT              PRIMARY KEY ,
    Complaint_ID                 INT              NOT NULL,
    Staff_ID                     INT              NOT NULL,
    Assigned_By                  INT              NOT NULL,
    Assigned_Date                DATE             NOT NULL,
    Due_Date                     DATE             NOT NULL,
    Completed_Date               DATE             NULL,
    Assignment_Status            VARCHAR(30)      NOT NULL,
    Remarks                      VARCHAR(300)     NULL,
    Is_Current                   VARCHAR(5)       NOT NULL,

    FOREIGN KEY (Complaint_ID) REFERENCES Complaints(Complaint_ID),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID),
    FOREIGN KEY (Assigned_By) REFERENCES Users(User_ID)
);

INSERT INTO Assignments VALUES
(1201,1101,801,727,'2026-02-01','2026-02-04','2026-02-03','Completed','Pipeline repair completed successfully','No'),
(1202,1102,802,728,'2026-02-02','2026-02-05',NULL,'In Progress','Water pressure inspection is in progress','Yes'),
(1203,1103,803,729,'2026-02-03','2026-02-04','2026-02-04','Completed','Power supply restored','No'),
(1204,1104,804,727,'2026-02-04','2026-02-06',NULL,'In Progress','Voltage problem is being inspected','Yes'),
(1205,1105,805,728,'2026-02-05','2026-02-09',NULL,'Assigned','Road inspection scheduled','Yes'),
(1206,1106,806,729,'2026-02-06','2026-02-11',NULL,'In Progress','Road repair work started','Yes'),
(1207,1107,807,727,'2026-02-07','2026-02-09','2026-02-09','Completed','Garbage was collected','No'),
(1208,1108,808,728,'2026-02-08','2026-02-11',NULL,'Escalated','Illegal dumping reported for further action','Yes'),
(1209,1109,809,729,'2026-02-09','2026-02-13',NULL,'In Progress','Public area inspection underway','Yes'),
(1210,1110,810,727,'2026-02-10','2026-02-11',NULL,'Assigned','Safety inspection scheduled','Yes'),
(1211,1111,811,728,'2026-02-11','2026-02-14',NULL,'In Progress','Transport service issue under investigation','Yes'),
(1212,1112,812,729,'2026-02-12','2026-02-14','2026-02-14','Completed','Traffic signal repaired','No'),
(1213,1113,813,727,'2026-02-13','2026-02-16',NULL,'In Progress','Street light repair work started','Yes'),
(1214,1114,814,728,'2026-02-14','2026-02-17',NULL,'Assigned','Cleaning team assigned to facility','Yes'),
(1215,1115,815,729,'2026-02-15','2026-02-17','2026-02-17','Completed','Internet connection restored','No'),
(1216,1116,816,727,'2026-02-16','2026-02-19',NULL,'In Progress','Technical team checking the system','Yes'),
(1217,1117,817,728,'2026-02-17','2026-02-20',NULL,'In Progress','Drain cleaning work is underway','Yes'),
(1218,1118,818,729,'2026-02-18','2026-02-23',NULL,'Assigned','Environmental inspection scheduled','Yes'),
(1219,1119,819,727,'2026-02-19','2026-02-20',NULL,'Escalated','Emergency response issue escalated','Yes'),
(1220,1120,820,728,'2026-02-20','2026-02-22','2026-02-22','Completed','Stray animal complaint handled','No');


CREATE TABLE ComplaintUpdates (
    Update_ID                   INT               PRIMARY KEY ,
    Complaint_ID                INT               NOT NULL,
    Staff_ID                    INT               NOT NULL,
    Status_ID                   INT               NOT NULL,
    Update_Message              VARCHAR(500)      NOT NULL,
    Update_Date                 DATETIME          NOT NULL,
    Work_Hours                  INT               NULL,
    Action_Taken                VARCHAR(300)      NULL,
    Next_Action                 VARCHAR(300)      NULL,
    Is_Internal                 VARCHAR(5)        NOT NULL,

    FOREIGN KEY (Complaint_ID) REFERENCES Complaints(Complaint_ID),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID),
    FOREIGN KEY (Status_ID) REFERENCES Statuses(Status_ID)
);

INSERT INTO ComplaintUpdates VALUES
(1301,1101,801,316,'Water pipeline leakage has been repaired','2026-02-03 15:30:00',5,'Damaged pipeline section was replaced','Final inspection will be completed','No'),
(1302,1102,802,309,'Water pressure problem is being investigated','2026-02-03 11:00:00',2,'Water pressure was checked at multiple points','Check the main supply valve','Yes'),
(1303,1103,803,316,'Electricity supply has been restored','2026-02-04 14:20:00',4,'Faulty electrical connection was repaired','Monitor the power supply','No'),
(1304,1104,804,309,'Voltage fluctuation is under investigation','2026-02-05 10:30:00',3,'Voltage levels were measured','Inspect the local transformer','Yes'),
(1305,1105,805,304,'Road pothole has been inspected','2026-02-06 12:15:00',2,'Pothole size and road condition were checked','Prepare the road repair plan','No'),
(1306,1106,806,309,'Road repair work has started','2026-02-08 13:45:00',6,'Damaged road surface was cleared','Complete road resurfacing','No'),
(1307,1107,807,316,'Garbage has been collected','2026-02-09 10:00:00',3,'Waste was removed from the reported location','Schedule regular collection','No'),
(1308,1108,808,312,'Illegal dumping complaint has been escalated','2026-02-09 14:30:00',2,'Location was inspected and evidence collected','Forward case to enforcement team','Yes'),
(1309,1109,809,303,'Public hygiene issue is under review','2026-02-10 11:20:00',3,'Area was inspected for sanitation problems','Arrange cleaning service','No'),
(1310,1110,810,304,'Safety hazard has been inspected','2026-02-10 16:00:00',2,'Unsafe structure was examined','Request immediate removal','Yes'),
(1311,1111,811,309,'Transport service delay is being investigated','2026-02-12 10:15:00',3,'Bus schedule and route were checked','Contact transport operator','No'),
(1312,1112,812,316,'Traffic signal has been repaired','2026-02-14 12:30:00',4,'Faulty signal component was replaced','Test signal operation','No'),
(1313,1113,813,309,'Street light repair is in progress','2026-02-14 19:00:00',3,'Faulty street light was inspected','Replace damaged lighting unit','No'),
(1314,1114,814,303,'Public toilet maintenance issue is under review','2026-02-15 09:30:00',2,'Facility condition was inspected','Send cleaning and maintenance team','No'),
(1315,1115,815,316,'Internet connection has been restored','2026-02-17 15:45:00',4,'Network equipment was restarted and connection restored','Monitor network stability','No'),
(1316,1116,816,309,'Computer system issue is being investigated','2026-02-17 11:30:00',3,'System hardware and software were checked','Replace faulty component if required','Yes'),
(1317,1117,817,309,'Blocked drainage system is being cleaned','2026-02-18 13:20:00',5,'Waste blocking the drain was removed','Complete drainage cleaning','No'),
(1318,1118,818,303,'Air pollution complaint is under investigation','2026-02-19 12:00:00',3,'Pollution source was inspected','Collect additional environmental information','Yes'),
(1319,1119,819,312,'Emergency response complaint has been escalated','2026-02-19 21:30:00',2,'Response delay was reviewed','Submit report to emergency management','Yes'),
(1320,1120,820,316,'Stray animal complaint has been resolved','2026-02-22 11:00:00',3,'Animal control team handled the reported animals','Continue monitoring the area','No');


CREATE TABLE ComplaintVerification (
    Verification_ID          INT              PRIMARY KEY ,
    Complaint_ID             INT              NOT NULL,
    Staff_ID                 INT              NOT NULL,
    Department_ID            INT              NOT NULL,
    Location_ID              INT              NOT NULL,
    Verification_Date        DATE             NOT NULL,
    Verification_Status      VARCHAR(30)      NOT NULL,
    Issue_Found              VARCHAR(10)      NOT NULL,
    Verification_Notes       VARCHAR(500)     NULL,
    Next_Action              VARCHAR(300)     NULL,

    FOREIGN KEY (Complaint_ID) REFERENCES Complaints(Complaint_ID),
	FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID),
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID),
    FOREIGN KEY (Location_ID) REFERENCES Locations(Location_ID)
);

INSERT INTO ComplaintVerification VALUES
(1401,1101,801,201,601,'2026-02-02','Verified','Yes','Water leakage was confirmed at the reported pipeline location','Proceed with pipeline repair'),
(1402,1102,801,201,602,'2026-02-03','Verified','Yes','Low water pressure was confirmed during inspection','Check main supply valve'),
(1403,1103,802,202,603,'2026-02-04','Verified','Yes','Power outage was confirmed in the reported area','Restore electrical supply'),
(1404,1104,802,202,604,'2026-02-05','Verified','Yes','Voltage fluctuation was detected during testing','Inspect local transformer'),
(1405,1105,803,203,605,'2026-02-06','Verified','Yes','Large pothole was found on the reported road','Schedule road repair'),
(1406,1106,803,203,606,'2026-02-07','Verified','Yes','Road surface damage was confirmed','Start road repair work'),
(1407,1107,804,204,607,'2026-02-08','Verified','Yes','Uncollected garbage was found at the location','Arrange waste collection'),
(1408,1108,804,204,608,'2026-02-09','Verified','Yes','Illegal waste dumping was confirmed','Escalate to enforcement team'),
(1409,1109,805,205,609,'2026-02-10','Verified','Yes','Poor hygiene conditions were found in the area','Arrange sanitation service'),
(1410,1110,806,206,610,'2026-02-10','Verified','Yes','Public safety hazard was confirmed','Request immediate corrective action'),
(1411,1111,807,207,611,'2026-02-11','Verified','Yes','Transport service delay was confirmed','Contact transport operator'),
(1412,1112,808,208,612,'2026-02-12','Verified','Yes','Traffic signal failure was confirmed','Repair traffic signal'),
(1413,1113,809,209,613,'2026-02-13','Verified','Yes','Street light was found non-functional','Replace faulty lighting unit'),
(1414,1114,810,210,614,'2026-02-14','Verified','Yes','Public toilet maintenance issue was confirmed','Send maintenance team'),
(1415,1115,811,211,615,'2026-02-15','Verified','Yes','Internet disconnection was confirmed','Check network equipment'),
(1416,1116,812,212,616,'2026-02-16','Verified','Yes','Computer system problem was confirmed','Perform technical repair'),
(1417,1117,813,213,617,'2026-02-17','Verified','Yes','Drain blockage was found at the reported location','Start drain cleaning'),
(1418,1118,814,214,618,'2026-02-18','Verified','Yes','Air pollution issue was observed','Conduct environmental inspection'),
(1419,1119,815,215,619,'2026-02-19','Verified','Yes','Emergency response delay was confirmed','Escalate to emergency management'),
(1420,1120,816,216,620,'2026-02-20','Verified','Yes','Stray animal issue was confirmed','Send animal control team');


CREATE TABLE Comments (
    Comment_ID              INT              PRIMARY KEY ,
    Complaint_ID            INT              NOT NULL,
    User_ID                 INT              NOT NULL,
    Parent_Comment_ID       INT              NULL,
    Comment_Text            VARCHAR(500)     NOT NULL,
    Comment_Date            DATETIME         NOT NULL,
    Comment_Type            VARCHAR(30)      NOT NULL,
    Comment_Status          VARCHAR(20)      NOT NULL,
    Is_Internal             VARCHAR(5)       NOT NULL,
    Edited_Date             DATETIME         NULL,

    FOREIGN KEY (Complaint_ID) REFERENCES Complaints(Complaint_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Parent_Comment_ID) REFERENCES Comments(Comment_ID)
);

INSERT INTO Comments VALUES
(1501,1101,701,NULL,'The water leakage is causing problems for nearby residents.','2026-02-01 09:30:00','Complaint','Active','No',NULL),
(1502,1102,702,NULL,'Water pressure is still low during the morning hours.','2026-02-02 10:15:00','Complaint','Active','No',NULL),
(1503,1103,703,NULL,'Electricity supply is not available in this area.','2026-02-03 08:45:00','Complaint','Active','No',NULL),
(1504,1104,704,NULL,'Voltage fluctuation is affecting electrical appliances.','2026-02-04 11:20:00','Complaint','Active','No',NULL),
(1505,1105,705,NULL,'The pothole is dangerous for two-wheelers.','2026-02-05 09:10:00','Complaint','Active','No',NULL),
(1506,1106,706,NULL,'Road damage has become worse after recent rain.','2026-02-06 14:00:00','Complaint','Active','No',NULL),
(1507,1107,707,NULL,'Garbage has not been collected for several days.','2026-02-07 10:30:00','Complaint','Active','No',NULL),
(1508,1108,708,NULL,'Waste dumping is creating an unpleasant smell in the area.','2026-02-08 12:15:00','Complaint','Active','No',NULL),
(1509,1109,709,NULL,'The public area needs immediate cleaning.','2026-02-09 09:45:00','Complaint','Active','No',NULL),
(1510,1110,710,NULL,'This safety issue may cause accidents if not fixed quickly.','2026-02-10 16:20:00','Complaint','Active','No',NULL),
(1511,1111,711,NULL,'The bus service is regularly delayed at this location.','2026-02-11 08:30:00','Complaint','Active','No',NULL),
(1512,1112,712,NULL,'The traffic signal is not working properly.','2026-02-12 13:10:00','Complaint','Active','No',NULL),
(1513,1113,713,NULL,'The street light remains switched off at night.','2026-02-13 19:30:00','Complaint','Active','No',NULL),
(1514,1114,714,NULL,'The public toilet requires cleaning and maintenance.','2026-02-14 10:00:00','Complaint','Active','No',NULL),
(1515,1115,715,NULL,'Internet service has been unavailable since morning.','2026-02-15 11:45:00','Complaint','Active','No',NULL),
(1516,1116,716,NULL,'The computer system is not responding properly.','2026-02-16 15:20:00','Complaint','Active','No',NULL),
(1517,1117,717,NULL,'The blocked drain is causing water to collect on the road.','2026-02-17 09:15:00','Complaint','Active','No',NULL),
(1518,1118,718,NULL,'There is a strong pollution problem near the reported location.','2026-02-18 12:40:00','Complaint','Active','No',NULL),
(1519,1119,719,NULL,'Emergency response was delayed and immediate attention is required.','2026-02-19 20:10:00','Complaint','Active','No',NULL),
(1520,1120,720,NULL,'Stray animals are creating problems for people in this area.','2026-02-20 17:00:00','Complaint','Active','No',NULL);


CREATE TABLE Feedback (
    Feedback_ID             INT              PRIMARY KEY ,
    Complaint_ID            INT              NOT NULL UNIQUE,
    User_ID                 INT              NOT NULL,
    Rating                  INT              NOT NULL,
    Feedback_Text           VARCHAR(500)     NULL,
    Submitted_Date          DATE             NOT NULL,
    Resolution_Rating       INT              NOT NULL,
    Staff_Rating            INT              NOT NULL,
    Would_Recommend         VARCHAR(5)       NOT NULL,
    Is_Anonymous            VARCHAR(5)       NOT NULL,

    FOREIGN KEY (Complaint_ID) REFERENCES Complaints(Complaint_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

INSERT INTO Feedback VALUES
(1601,1101,701,5,'The water leakage was repaired quickly.','2026-02-04',5,5,'Yes','No'),
(1602,1102,702,4,'The water pressure has improved after inspection.','2026-02-06',4,4,'Yes','No'),
(1603,1103,703,5,'Electricity service was restored successfully.','2026-02-05',5,5,'Yes','No'),
(1604,1104,704,4,'The voltage issue was handled properly.','2026-02-07',4,4,'Yes','No'),
(1605,1105,705,5,'The road complaint was handled well.','2026-02-10',5,5,'Yes','No'),
(1606,1106,706,4,'Road repair work was satisfactory.','2026-02-12',4,4,'Yes','No'),
(1607,1107,707,5,'Garbage was collected as requested.','2026-02-10',5,5,'Yes','No'),
(1608,1108,708,3,'The waste dumping issue needs more attention.','2026-02-12',3,3,'No','No'),
(1609,1109,709,4,'The hygiene problem was handled properly.','2026-02-14',4,4,'Yes','No'),
(1610,1110,710,5,'The safety issue was handled quickly.','2026-02-12',5,5,'Yes','No'),
(1611,1111,711,4,'The transport issue was investigated.','2026-02-15',4,4,'Yes','No'),
(1612,1112,712,5,'The traffic signal was repaired successfully.','2026-02-15',5,5,'Yes','No'),
(1613,1113,713,4,'Street light repair was completed.','2026-02-17',4,4,'Yes','No'),
(1614,1114,714,4,'The public toilet maintenance was satisfactory.','2026-02-18',4,4,'Yes','No'),
(1615,1115,715,5,'Internet connection was restored quickly.','2026-02-18',5,5,'Yes','No'),
(1616,1116,716,4,'The technical team solved the system problem.','2026-02-20',4,5,'Yes','No'),
(1617,1117,717,4,'The drainage cleaning work was useful.','2026-02-21',4,4,'Yes','No'),
(1618,1118,718,3,'The pollution issue requires additional monitoring.','2026-02-22',3,3,'No','No'),
(1619,1119,719,4,'The emergency complaint was escalated properly.','2026-02-21',4,4,'Yes','No'),
(1620,1120,720,5,'The stray animal issue was resolved successfully.','2026-02-23',5,5,'Yes','No');


CREATE TABLE Notifications (
    Notification_ID            INT             PRIMARY KEY ,
    User_ID                    INT             NOT NULL,
    Complaint_ID               INT             NULL,
    Notification_Type          VARCHAR(50)     NOT NULL,
    Message                    VARCHAR(500)    NOT NULL,
    Created_Date               DATETIME        NOT NULL,
    Is_Read                    VARCHAR(5)      NOT NULL,
    Read_Date                  DATETIME        NULL,
    Priority                   VARCHAR(20)     NOT NULL,
    Channel                    VARCHAR(20)     NOT NULL,

    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Complaint_ID) REFERENCES Complaints(Complaint_ID)
);

INSERT INTO Notifications VALUES
(1701,701,1101,'Status Update','Your water leakage complaint has been received.','2026-02-01 09:00:00','Yes','2026-02-01 10:00:00','High','Email'),
(1702,702,1102,'Verification','Your water pressure complaint is under verification.','2026-02-03 10:00:00','Yes','2026-02-03 11:00:00','Medium','Email'),
(1703,703,1103,'Assignment','Your electricity complaint has been assigned to staff.','2026-02-03 12:00:00','Yes','2026-02-03 13:00:00','High','SMS'),
(1704,704,1104,'Status Update','Your voltage complaint is being investigated.','2026-02-05 11:00:00','Yes','2026-02-05 12:00:00','Medium','Email'),
(1705,705,1105,'Verification','Your road pothole complaint has been verified.','2026-02-06 13:00:00','Yes','2026-02-06 14:00:00','High','SMS'),
(1706,706,1106,'Progress Update','Road repair work has started for your complaint.','2026-02-08 14:00:00','No',NULL,'High','Email'),
(1707,707,1107,'Resolution','Your garbage collection complaint has been resolved.','2026-02-09 11:00:00','Yes','2026-02-09 12:00:00','Medium','Email'),
(1708,708,1108,'Escalation','Your illegal dumping complaint has been escalated.','2026-02-09 15:00:00','No',NULL,'High','SMS'),
(1709,709,1109,'Verification','Your public hygiene complaint is under review.','2026-02-10 12:00:00','Yes','2026-02-10 13:00:00','Medium','Email'),
(1710,710,1110,'Safety Alert','Your safety complaint requires immediate action.','2026-02-10 16:30:00','No',NULL,'Critical','SMS'),
(1711,711,1111,'Status Update','Your transport complaint is being investigated.','2026-02-12 11:00:00','Yes','2026-02-12 12:00:00','Medium','Email'),
(1712,712,1112,'Resolution','Your traffic signal complaint has been resolved.','2026-02-14 13:00:00','Yes','2026-02-14 14:00:00','High','SMS'),
(1713,713,1113,'Progress Update','Street light repair work is in progress.','2026-02-14 19:30:00','No',NULL,'Medium','Email'),
(1714,714,1114,'Verification','Your public toilet complaint has been verified.','2026-02-15 10:00:00','Yes','2026-02-15 11:00:00','Medium','Email'),
(1715,715,1115,'Resolution','Your internet connection has been restored.','2026-02-17 16:00:00','Yes','2026-02-17 17:00:00','High','SMS'),
(1716,716,1116,'Progress Update','Technical staff are working on your computer issue.','2026-02-17 12:00:00','No',NULL,'Medium','Email'),
(1717,717,1117,'Progress Update','Drain cleaning work is currently in progress.','2026-02-18 14:00:00','No',NULL,'High','SMS'),
(1718,718,1118,'Verification','Your environmental complaint is under investigation.','2026-02-19 13:00:00','Yes','2026-02-19 14:00:00','Medium','Email'),
(1719,719,1119,'Escalation','Your emergency complaint has been escalated.','2026-02-19 22:00:00','No',NULL,'Critical','SMS'),
(1720,720,NULL,'System Notice','Your complaint account information has been updated.','2026-02-20 17:30:00','Yes','2026-02-20 18:00:00','Low','Email');


CREATE TABLE Escalations (
    Escalation_ID              INT             PRIMARY KEY ,
    Complaint_ID               INT             NOT NULL,
    User_ID                    INT             NOT NULL,
    Department_ID              INT             NOT NULL,
    Escalation_Reason          VARCHAR(500)    NOT NULL,
    Escalation_Date            DATE            NOT NULL,
    Escalation_Level           INT             NOT NULL,
    Resolution_Date            DATE            NULL,
    Escalation_Status          VARCHAR(30)     NOT NULL,
    Resolution_Remarks         VARCHAR(300)    NULL,

    FOREIGN KEY (Complaint_ID) REFERENCES Complaints(Complaint_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

INSERT INTO Escalations VALUES
(1801,1101,727,201,'Pipeline repair requires additional technical support','2026-02-02',1,'2026-02-03','Resolved','Pipeline repair was completed'),
(1802,1102,728,201,'Water pressure issue requires department inspection','2026-02-03',1,NULL,'In Progress','Inspection is currently underway'),
(1803,1103,729,202,'Power outage requires urgent electrical response','2026-02-03',2,'2026-02-04','Resolved','Electricity supply restored'),
(1804,1104,727,202,'Voltage fluctuation requires transformer inspection','2026-02-05',1,NULL,'In Progress','Transformer inspection pending'),
(1805,1105,728,203,'Road pothole requires immediate repair','2026-02-06',2,NULL,'Pending','Repair work scheduled'),
(1806,1106,729,203,'Road damage requires additional maintenance work','2026-02-08',1,NULL,'In Progress','Road repair is ongoing'),
(1807,1107,727,204,'Garbage collection was delayed','2026-02-08',1,'2026-02-09','Resolved','Waste collection completed'),
(1808,1108,728,204,'Illegal dumping requires enforcement action','2026-02-09',2,NULL,'Escalated','Case forwarded to enforcement team'),
(1809,1109,729,205,'Public hygiene issue requires inspection','2026-02-10',1,NULL,'In Progress','Inspection is underway'),
(1810,1110,727,206,'Safety hazard requires urgent attention','2026-02-10',3,NULL,'Escalated','Immediate action requested'),
(1811,1111,728,207,'Transport delay requires operator review','2026-02-12',1,NULL,'In Progress','Transport operator contacted'),
(1812,1112,729,208,'Traffic signal failure requires technical repair','2026-02-12',2,'2026-02-14','Resolved','Signal repaired successfully'),
(1813,1113,727,209,'Street light failure requires maintenance support','2026-02-14',1,NULL,'In Progress','Replacement work underway'),
(1814,1114,728,210,'Public toilet requires additional maintenance','2026-02-15',1,NULL,'Pending','Maintenance team assigned'),
(1815,1115,729,211,'Internet disconnection requires technical support','2026-02-16',2,'2026-02-17','Resolved','Internet connection restored'),
(1816,1116,727,212,'Computer system requires specialist support','2026-02-17',1,NULL,'In Progress','Technical inspection ongoing'),
(1817,1117,728,214,'Blocked drain requires urgent cleaning','2026-02-18',2,NULL,'In Progress','Drain cleaning is underway'),
(1818,1118,729,216,'Pollution complaint requires environmental investigation','2026-02-19',1,NULL,'Pending','Environmental inspection scheduled'),
(1819,1119,727,215,'Emergency response delay requires senior review','2026-02-19',3,NULL,'Escalated','Case forwarded to emergency management'),
(1820,1120,728,218,'Stray animal complaint requires animal control action','2026-02-20',1,'2026-02-22','Resolved','Animal control team handled the issue');


CREATE TABLE ComplaintHistory (
    History_ID                 INT              PRIMARY KEY ,
    Complaint_ID               INT              NOT NULL,
    User_ID                    INT              NOT NULL,
    Old_Status_ID              INT              NULL,
    New_Status_ID              INT              NOT NULL,
    Change_Reason              VARCHAR(300)     NULL,
    Changed_Date               DATETIME         NOT NULL,
    Remarks                    VARCHAR(300)     NULL,
    Action_Type                VARCHAR(30)      NOT NULL,
    Reference_Table            VARCHAR(100)     NULL,

    FOREIGN KEY (Complaint_ID) REFERENCES Complaints(Complaint_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Old_Status_ID) REFERENCES Statuses(Status_ID),
    FOREIGN KEY (New_Status_ID) REFERENCES Statuses(Status_ID)
);

INSERT INTO ComplaintHistory VALUES
(1901,1101,701,NULL,301,'Complaint submitted by user','2026-02-01 09:00:00','Initial complaint received','Created','Complaints'),
(1902,1102,702,301,303,'Complaint sent for review','2026-02-03 10:00:00','Verification started','Updated','ComplaintVerification'),
(1903,1103,703,301,305,'Complaint assigned to staff','2026-02-03 12:00:00','Electrical staff assigned','Assigned','Assignments'),
(1904,1104,704,303,309,'Investigation started','2026-02-05 11:00:00','Voltage inspection started','Updated','ComplaintUpdates'),
(1905,1105,705,301,304,'Issue verified by staff','2026-02-06 13:00:00','Pothole confirmed','Verified','ComplaintVerification'),
(1906,1106,706,305,309,'Repair work started','2026-02-08 14:00:00','Road repair is in progress','Updated','ComplaintUpdates'),
(1907,1107,707,305,316,'Waste collection completed','2026-02-09 11:00:00','Garbage removed','Resolved','ComplaintUpdates'),
(1908,1108,708,305,312,'Complaint requires escalation','2026-02-09 15:00:00','Forwarded for further action','Escalated','Escalations'),
(1909,1109,709,301,303,'Complaint is under review','2026-02-10 12:00:00','Inspection started','Updated','ComplaintVerification'),
(1910,1110,710,305,304,'Safety issue verified','2026-02-10 16:30:00','Hazard confirmed','Verified','ComplaintVerification'),
(1911,1111,711,301,303,'Transport issue requires investigation','2026-02-12 11:00:00','Route information checked','Updated','ComplaintUpdates'),
(1912,1112,712,309,316,'Traffic signal repair completed','2026-02-14 13:00:00','Signal restored','Resolved','ComplaintUpdates'),
(1913,1113,713,305,309,'Street light repair started','2026-02-14 19:30:00','Lighting unit inspected','Updated','ComplaintUpdates'),
(1914,1114,714,301,303,'Facility inspection started','2026-02-15 10:00:00','Maintenance issue confirmed','Verified','ComplaintVerification'),
(1915,1115,715,309,316,'Internet connection restored','2026-02-17 16:00:00','Network service restored','Resolved','ComplaintUpdates'),
(1916,1116,716,304,309,'Technical investigation started','2026-02-17 12:00:00','System inspection underway','Updated','ComplaintUpdates'),
(1917,1117,717,305,309,'Drain cleaning started','2026-02-18 14:00:00','Blocked waste is being removed','Updated','ComplaintUpdates'),
(1918,1118,718,301,303,'Environmental investigation started','2026-02-19 13:00:00','Pollution source being checked','Updated','ComplaintVerification'),
(1919,1119,719,305,312,'Emergency response delay escalated','2026-02-19 22:00:00','Senior management notified','Escalated','Escalations'),
(1920,1120,720,304,316,'Animal control action completed','2026-02-22 12:00:00','Stray animal issue resolved','Resolved','ComplaintUpdates');

CREATE TABLE AuditLogs (
    Audit_ID                  INT               PRIMARY KEY ,
    User_ID                   INT               NOT NULL,
    Table_Name                VARCHAR(100)      NOT NULL,
    Record_ID                 INT               NOT NULL,
    Action                    VARCHAR(30)       NOT NULL,
    Old_Value                 VARCHAR(500)      NULL,
    New_Value                 VARCHAR(500)      NULL,
    Action_Date               DATETIME          NOT NULL,
    IP_Address                VARCHAR(45)       NULL,
    Action_Description        VARCHAR(300)      NULL,

    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

INSERT INTO AuditLogs VALUES
(2001,701,'Complaints',1101,'INSERT',NULL,'Submitted','2026-02-01 09:00:00','192.168.1.101','New complaint record created'),
(2002,702,'Complaints',1102,'UPDATE','Submitted','Under Review','2026-02-03 10:00:00','192.168.1.102','Complaint status updated'),
(2003,727,'Assignments',1203,'INSERT',NULL,'Assigned','2026-02-03 12:00:00','192.168.1.127','Complaint assigned to staff'),
(2004,704,'ComplaintVerification',1404,'INSERT',NULL,'Verified','2026-02-05 11:00:00','192.168.1.104','Complaint verification recorded'),
(2005,705,'Complaints',1105,'UPDATE','Under Review','Verified','2026-02-06 13:00:00','192.168.1.105','Complaint verification completed'),
(2006,729,'Assignments',1206,'UPDATE','Assigned','In Progress','2026-02-08 14:00:00','192.168.1.129','Assignment work started'),
(2007,707,'ComplaintUpdates',1307,'INSERT',NULL,'Resolved','2026-02-09 11:00:00','192.168.1.107','Resolution update recorded'),
(2008,728,'Escalations',1808,'INSERT',NULL,'Escalated','2026-02-09 15:00:00','192.168.1.128','Complaint escalation created'),
(2009,709,'ComplaintVerification',1409,'INSERT',NULL,'Verified','2026-02-10 12:00:00','192.168.1.109','Complaint verification details added'),
(2010,727,'Escalations',1810,'INSERT',NULL,'Escalated','2026-02-10 16:30:00','192.168.1.127','Safety complaint escalated'),
(2011,711,'ComplaintUpdates',1311,'INSERT',NULL,'In Progress','2026-02-12 11:00:00','192.168.1.111','Transport investigation updated'),
(2012,729,'ComplaintUpdates',1312,'UPDATE','In Progress','Resolved','2026-02-14 13:00:00','192.168.1.129','Traffic signal repair completed'),
(2013,713,'ComplaintUpdates',1313,'INSERT',NULL,'In Progress','2026-02-14 19:30:00','192.168.1.113','Street light repair updated'),
(2014,714,'ComplaintVerification',1414,'INSERT',NULL,'Verified','2026-02-15 10:00:00','192.168.1.114','Facility verification recorded'),
(2015,729,'ComplaintUpdates',1315,'UPDATE','In Progress','Resolved','2026-02-17 16:00:00','192.168.1.129','Internet repair completed'),
(2016,716,'ComplaintUpdates',1316,'INSERT',NULL,'In Progress','2026-02-17 12:00:00','192.168.1.116','Technical investigation updated'),
(2017,728,'ComplaintUpdates',1317,'INSERT',NULL,'In Progress','2026-02-18 14:00:00','192.168.1.128','Drain cleaning update recorded'),
(2018,718,'ComplaintVerification',1418,'INSERT',NULL,'Verified','2026-02-19 13:00:00','192.168.1.118','Environmental verification recorded'),
(2019,727,'Escalations',1819,'INSERT',NULL,'Escalated','2026-02-19 22:00:00','192.168.1.127','Emergency complaint escalated'),
(2020,720,'ComplaintUpdates',1320,'UPDATE','In Progress','Resolved','2026-02-22 12:00:00','192.168.1.120','Animal control complaint resolved');


SELECT * FROM Roles;
SELECT * FROM Departments;
SELECT * FROM Statuses;
SELECT * FROM Priorities;
SELECT * FROM Categories;
SELECT * FROM Locations;
SELECT * FROM Users;
SELECT * FROM Staff;
SELECT * FROM ResolutionTypes;
SELECT * FROM SubCategories;
SELECT * FROM Complaints;
SELECT * FROM Assignments;
SELECT * FROM ComplaintUpdates;
SELECT * FROM ComplaintVerification;
SELECT * FROM Comments;
SELECT * FROM Feedback;
SELECT * FROM Notifications;
SELECT * FROM Escalations;
SELECT * FROM ComplaintHistory;
SELECT * FROM AuditLogs;


-- 1. BASIC SELECT

-- Query 1
SELECT * FROM Roles;

-- Query 2
SELECT User_ID, Full_Name, Email 
FROM Users;

-- Query 3
SELECT Complaint_ID, Complaint_Title, Created_Date 
FROM Complaints;

-- Query 4
SELECT Department_ID, Department_Name, Office_Location
FROM Departments;

-- Query 5
SELECT Status_ID, Status_Name, Status_Type
FROM Statuses;

-- 2. WHERE 

-- Query 6
SELECT * FROM Users
WHERE City = 'Kochi';

-- Query 7
SELECT * FROM Users
WHERE Gender = 'Female';

-- Query 8
SELECT * FROM Users 
WHERE Account_Status = 'Active';

-- Query 9
SELECT * FROM Users 
WHERE Registration_Date >= '2026-02-15';

-- Query 10
SELECT * FROM Users 
WHERE Role_ID = 101;

-- Query 11
SELECT * FROM Users 
WHERE Role_ID BETWEEN 101 AND 110;

-- Query 12
SELECT * FROM Users 
WHERE Full_Name LIKE 'A%';

-- Query 13
SELECT * FROM Users 
WHERE Full_Name LIKE '%K';

-- Query 14
SELECT * FROM Users 
WHERE Email LIKE '%gmail.com';

-- Query 15
SELECT * FROM Users 
WHERE Phone IS NOT NULL;

-- Query 16
SELECT * FROM Users 
WHERE City IN ('Kochi', 'Kannur');

-- Query 17
SELECT * FROM Users 
WHERE Gender = 'Male' AND City = 'Kozhikode';

-- Query 18
SELECT * FROM Users 
WHERE Gender = 'Female' OR City = 'Palakkad';

-- Query 19
SELECT * FROM Roles 
WHERE Access_Level = 'High';

-- Query 20
SELECT * FROM Roles 
WHERE Can_Delete = 'Yes';

-- Query 21
SELECT * FROM Roles 
WHERE Role_Name LIKE '%Staff%';

-- Query 22
SELECT * FROM Departments 
WHERE Status = 'Active';

-- Query 23
SELECT * FROM Departments 
WHERE Department_Name LIKE '%Department%';

-- Query 24
SELECT * FROM Departments 
WHERE Phone LIKE '98765000%';

-- Query 25
SELECT * FROM Departments 
WHERE Working_Hours = '24 Hours';

-- Query 26
SELECT * FROM Statuses 
WHERE Status_Type = 'Processing';

-- Query 27
SELECT * FROM Statuses 
WHERE Is_Final = 'Yes';

-- Query 28
SELECT * FROM Statuses 
WHERE Status_Order > 10;

-- Query 29
SELECT * FROM Statuses 
WHERE Status_Name LIKE '%ed%';

-- Query 30
SELECT * FROM Priorities 
WHERE Response_Hours <= 6;

-- Query 31
SELECT * FROM Priorities 
WHERE Resolution_Hours BETWEEN 12 AND 48;

-- Query 32
SELECT * FROM Priorities 
WHERE Priority_Level = 'Level 5';

-- Query 33
SELECT * FROM Priorities 
WHERE Status = 'Active';

-- Query 34
SELECT * FROM Categories 
WHERE Is_Recurring = 'No';

-- Query 35
SELECT * FROM Categories 
WHERE Category_Name LIKE '%Services%';

-- Query 36
SELECT * FROM Categories 
WHERE Display_Order >= 10;

-- Query 37
SELECT * FROM Locations 
WHERE City = 'Kozhikode';

-- Query 38
SELECT * FROM Locations 
WHERE Location_Type = 'Urban';

-- Query 39
SELECT * FROM Locations 
WHERE Pincode LIKE '673%';

-- Query 40
SELECT * FROM Locations 
WHERE Latitude IS NOT NULL;

-- Query 41
SELECT * FROM Staff 
WHERE Staff_Status = 'Active';

-- Query 42
SELECT * FROM Staff 
WHERE Department_ID = 201;

-- Query 43
SELECT * FROM Staff 
WHERE Designation LIKE '%Officer%';

-- Query 44
SELECT * FROM Staff 
WHERE Joining_Date >= '2025-01-01';

-- Query 45
SELECT * FROM ResolutionTypes 
WHERE Estimated_Days <= 3;

-- Query 46
SELECT * FROM ResolutionTypes 
WHERE Requires_Visit = 'No';

-- Query 47
SELECT * FROM ResolutionTypes 
WHERE Requires_Approval = 'Yes';

-- Query 48
SELECT * FROM SubCategories 
WHERE Priority_ID = 405;

-- Query 49
SELECT * FROM SubCategories 
WHERE Expected_Days < 3;

-- Query 50
SELECT * FROM SubCategories 
WHERE SubCategory_Name LIKE '%Road%';

-- Query 51
SELECT * FROM Complaints 
WHERE Status_ID = 309;

-- Query 52
SELECT * FROM Complaints 
WHERE Priority_ID = 405;

-- Query 53
SELECT * FROM Complaints 
WHERE Created_Date >= '2026-02-10 00:00:00';

-- Query 54
SELECT * FROM Complaints 
WHERE Complaint_Title LIKE '%Internet%';

-- Query 55
SELECT * FROM Complaints 
WHERE ResolutionType_ID IS NULL;

-- Query 56
SELECT * FROM Assignments 
WHERE Assignment_Status = 'Completed';

-- Query 57
SELECT * FROM Assignments 
WHERE Is_Current = 'Yes';

-- Query 58
SELECT * FROM Assignments 
WHERE Due_Date < '2026-02-10';

-- Query 59
SELECT * FROM ComplaintUpdates 
WHERE Work_Hours >= 4;

-- Query 60
SELECT * FROM ComplaintUpdates 
WHERE Is_Internal = 'Yes';

-- Query 61
SELECT * FROM ComplaintVerification 
WHERE Verification_Status = 'Verified';

-- Query 62
SELECT * FROM ComplaintVerification 
WHERE Issue_Found = 'Yes';

-- Query 63
SELECT * FROM Comments 
WHERE Comment_Status = 'Active';

-- Query 64
SELECT * FROM Comments 
WHERE Parent_Comment_ID IS NULL;

-- Query 65
SELECT * FROM Feedback 
WHERE Rating >= 4;

-- Query 66
SELECT * FROM Feedback 
WHERE Would_Recommend = 'No';

-- Query 67
SELECT * FROM Notifications 
WHERE Is_Read = 'No';

-- Query 68
SELECT * FROM Notifications 
WHERE Priority = 'Critical';

-- Query 69
SELECT * FROM Notifications 
WHERE Channel = 'SMS';

-- Query 70
SELECT * FROM Escalations 
WHERE Escalation_Level >= 2;

-- Query 71
SELECT * FROM Escalations 
WHERE Resolution_Date IS NULL;

-- Query 72
SELECT * FROM ComplaintHistory 
WHERE Action_Type = 'Resolved';

-- Query 73
SELECT * FROM AuditLogs 
WHERE Action = 'UPDATE';

-- Query 74
SELECT * FROM AuditLogs 
WHERE IP_Address LIKE '192.168.1.12%';

-- Query 75
SELECT * FROM Complaints 
WHERE User_ID = 701 AND Priority_ID >= 403;


-- 3. ORDER BY 

-- Query 76
SELECT * FROM Users 
ORDER BY Full_Name ASC;

-- Query 77
SELECT * FROM Users 
ORDER BY Registration_Date DESC;

-- Query 78
SELECT * FROM Roles 
ORDER BY Access_Level, Role_Name;

-- Query 79
SELECT * FROM Departments 
ORDER BY Department_Name ASC;

-- Query 80
SELECT * FROM Statuses 
ORDER BY Status_Order ASC;

-- Query 81
SELECT * FROM Priorities 
ORDER BY Response_Hours ASC;

-- Query 82
SELECT * FROM Categories 
ORDER BY Display_Order DESC;

-- Query 83
SELECT * FROM Locations 
ORDER BY City ASC, Area ASC;

-- Query 84
SELECT * FROM Staff 
ORDER BY Joining_Date DESC;

-- Query 85
SELECT * FROM ResolutionTypes 
ORDER BY Estimated_Days ASC;

-- Query 86
SELECT * FROM SubCategories 
ORDER BY Expected_Days DESC;

-- Query 87
SELECT * FROM Complaints 
ORDER BY Created_Date DESC;

-- Query 88
SELECT * FROM Complaints 
ORDER BY Priority_ID DESC, Created_Date ASC;

-- Query 89
SELECT * FROM Assignments 
ORDER BY Due_Date ASC;

-- Query 90
SELECT * FROM ComplaintUpdates 
ORDER BY Work_Hours DESC;

-- Query 91
SELECT * FROM ComplaintVerification 
ORDER BY Verification_Date DESC;

-- Query 92
SELECT * FROM Comments 
ORDER BY Comment_Date DESC;

-- Query 93
SELECT * FROM Feedback 
ORDER BY Rating DESC, Submitted_Date DESC;

-- Query 94
SELECT * FROM Notifications 
ORDER BY Created_Date DESC;

-- Query 95
SELECT * FROM Escalations 
ORDER BY Escalation_Level DESC, Escalation_Date ASC;


-- 4. GROUP BY

-- Query 96
SELECT Role_ID, COUNT(*) 
AS total_users 
FROM Users GROUP BY Role_ID;

-- Query 97
SELECT City, COUNT(*) 
AS user_count 
FROM Users GROUP BY City;

-- Query 98
SELECT Gender, COUNT(*) 
AS total 
FROM Users GROUP BY Gender;

-- Query 99
SELECT Account_Status, COUNT(*) 
AS total 
FROM Users GROUP BY Account_Status;

-- Query 100
SELECT Access_Level, COUNT(*) 
AS role_count 
FROM Roles GROUP BY Access_Level;

-- Query 101
SELECT Status, COUNT(*) 
AS department_count 
FROM Departments GROUP BY Status;

-- Query 102
SELECT Working_Hours, COUNT(*) 
AS departments 
FROM Departments GROUP BY Working_Hours;

-- Query 103
SELECT Status_Type, COUNT(*) 
AS status_count 
FROM Statuses GROUP BY Status_Type;

-- Query 104
SELECT Is_Final, COUNT(*) 
AS total 
FROM Statuses GROUP BY Is_Final;

-- Query 105
SELECT Priority_Level, COUNT(*) 
AS total 
FROM Priorities GROUP BY Priority_Level;

-- Query 106
SELECT Status, COUNT(*) 
AS priority_count 
FROM Priorities GROUP BY Status;

-- Query 107
SELECT Is_Recurring, COUNT(*) 
AS category_count 
FROM Categories GROUP BY Is_Recurring;

-- Query 108
SELECT City, COUNT(*) 
AS location_count 
FROM Locations GROUP BY City;

-- Query 109
SELECT Location_Type, COUNT(*) 
AS total 
FROM Locations GROUP BY Location_Type;

-- Query 110
SELECT Department_ID, COUNT(*) 
AS staff_count 
FROM Staff GROUP BY Department_ID;

-- Query 111
SELECT Staff_Status, COUNT(*) 
AS total 
FROM Staff GROUP BY Staff_Status;

-- Query 112
SELECT Requires_Visit, COUNT(*) 
AS total 
FROM ResolutionTypes GROUP BY Requires_Visit;

-- Query 113
SELECT Requires_Approval, COUNT(*) 
AS total 
FROM ResolutionTypes GROUP BY Requires_Approval;

-- Query 114
SELECT Category_ID, COUNT(*) 
AS subcategory_count 
FROM SubCategories GROUP BY Category_ID;

-- Query 115
SELECT Priority_ID, COUNT(*) 
AS subcategory_count 
FROM SubCategories GROUP BY Priority_ID;

-- Query 116
SELECT Status_ID, COUNT(*) 
AS complaint_count 
FROM Complaints GROUP BY Status_ID;

-- Query 117
SELECT Priority_ID, COUNT(*) 
AS complaint_count 
FROM Complaints GROUP BY Priority_ID;

-- Query 118
SELECT User_ID, COUNT(*) 
AS complaint_count 
FROM Complaints GROUP BY User_ID;

-- Query 119
SELECT Location_ID, COUNT(*) 
AS complaint_count 
FROM Complaints GROUP BY Location_ID;

-- Query 120
SELECT ResolutionType_ID, COUNT(*) 
AS complaint_count 
FROM Complaints GROUP BY ResolutionType_ID;

-- Query 121
SELECT Assignment_Status, COUNT(*) 
AS total 
FROM Assignments GROUP BY Assignment_Status;

-- Query 122
SELECT Staff_ID, COUNT(*) 
AS assignment_count 
FROM Assignments GROUP BY Staff_ID;

-- Query 123
SELECT Is_Current, COUNT(*) 
AS total 
FROM Assignments GROUP BY Is_Current;

-- Query 124
SELECT Status_ID, COUNT(*) 
AS update_count 
FROM ComplaintUpdates GROUP BY Status_ID;

-- Query 125
SELECT Staff_ID, SUM(Work_Hours) 
AS total_hours 
FROM ComplaintUpdates GROUP BY Staff_ID;

-- Query 126
SELECT Verification_Status, COUNT(*) 
AS total 
FROM ComplaintVerification GROUP BY Verification_Status;

-- Query 127
SELECT Comment_Type, COUNT(*) 
AS total 
FROM Comments GROUP BY Comment_Type;

-- Query 128
SELECT Rating, COUNT(*) 
AS feedback_count FROM Feedback GROUP BY Rating;

-- Query 129
SELECT Channel, COUNT(*) AS notification_count FROM Notifications GROUP BY Channel;

-- Query 130
SELECT Escalation_Status, COUNT(*) AS escalation_count FROM Escalations GROUP BY Escalation_Status;


-- 5. HAVING 

-- Query 131
SELECT Role_ID, COUNT(*) AS total FROM Users GROUP BY Role_ID HAVING COUNT(*) > 1;

-- Query 132
SELECT City, COUNT(*) AS total FROM Users GROUP BY City HAVING COUNT(*) >= 3;

-- Query 133
SELECT Gender, COUNT(*) AS total FROM Users GROUP BY Gender HAVING COUNT(*) > 5;

-- Query 134
SELECT Access_Level, COUNT(*) AS total FROM Roles GROUP BY Access_Level HAVING COUNT(*) >= 2;

-- Query 135
SELECT Working_Hours, COUNT(*) AS total FROM Departments GROUP BY Working_Hours HAVING COUNT(*) > 1;

-- Query 136
SELECT Status_Type, COUNT(*) AS total FROM Statuses GROUP BY Status_Type HAVING COUNT(*) > 2;

-- Query 137
SELECT Priority_Level, AVG(Response_Hours) AS avg_response FROM Priorities GROUP BY Priority_Level HAVING AVG(Response_Hours) < 10;

-- Query 138
SELECT Is_Recurring, COUNT(*) AS total FROM Categories GROUP BY Is_Recurring HAVING COUNT(*) > 5;

-- Query 139
SELECT City, COUNT(*) AS total FROM Locations GROUP BY City HAVING COUNT(*) >= 2;

-- Query 140
SELECT Department_ID, COUNT(*) AS total FROM Staff GROUP BY Department_ID HAVING COUNT(*) >= 1;

-- Query 141
SELECT Requires_Visit, COUNT(*) AS total FROM ResolutionTypes GROUP BY Requires_Visit HAVING COUNT(*) > 5;

-- Query 142
SELECT Category_ID, COUNT(*) AS total FROM SubCategories GROUP BY Category_ID HAVING COUNT(*) > 1;

-- Query 143
SELECT Status_ID, COUNT(*) AS total FROM Complaints GROUP BY Status_ID HAVING COUNT(*) >= 2;

-- Query 144
SELECT Priority_ID, COUNT(*) AS total FROM Complaints GROUP BY Priority_ID HAVING COUNT(*) > 2;

-- Query 145
SELECT Staff_ID, COUNT(*) AS total FROM Assignments GROUP BY Staff_ID HAVING COUNT(*) >= 1;

-- Query 146
SELECT Staff_ID, SUM(Work_Hours) AS hours FROM ComplaintUpdates GROUP BY Staff_ID HAVING SUM(Work_Hours) >= 3;

-- Query 147
SELECT Rating, COUNT(*) AS total FROM Feedback GROUP BY Rating HAVING COUNT(*) > 2;

-- Query 148
SELECT Channel, COUNT(*) AS total FROM Notifications GROUP BY Channel HAVING COUNT(*) > 5;

-- Query 149
SELECT Escalation_Level, COUNT(*) AS total FROM Escalations GROUP BY Escalation_Level HAVING COUNT(*) >= 2;

-- Query 150
SELECT Action, COUNT(*) AS total FROM AuditLogs GROUP BY Action HAVING COUNT(*) > 1;


-- 6. AGGREGATE FUNCTIONS 

-- Query 151
SELECT COUNT(*) AS total_roles FROM Roles;

-- Query 152
SELECT COUNT(*) AS total_departments FROM Departments;

-- Query 153
SELECT COUNT(*) AS total_users FROM Users;

-- Query 154
SELECT COUNT(*) AS total_staff FROM Staff;

-- Query 155
SELECT COUNT(*) AS total_complaints FROM Complaints;

-- Query 156
SELECT COUNT(*) AS total_assignments FROM Assignments;

-- Query 157
SELECT COUNT(*) AS total_updates FROM ComplaintUpdates;

-- Query 158
SELECT COUNT(*) AS total_feedback FROM Feedback;

-- Query 159
SELECT COUNT(*) AS total_notifications FROM Notifications;

-- Query 160
SELECT COUNT(*) AS total_escalations FROM Escalations;

-- Query 161
SELECT COUNT(DISTINCT City) AS unique_user_cities FROM Users;

-- Query 162
SELECT COUNT(DISTINCT Department_ID) AS departments_with_staff FROM Staff;

-- Query 163
SELECT AVG(Rating) AS average_rating FROM Feedback;

-- Query 164
SELECT AVG(Resolution_Rating) AS average_resolution_rating FROM Feedback;

-- Query 165
SELECT AVG(Staff_Rating) AS average_staff_rating FROM Feedback;

-- Query 166
SELECT MIN(Rating) AS minimum_rating FROM Feedback;

-- Query 167
SELECT MAX(Rating) AS maximum_rating FROM Feedback;

-- Query 168
SELECT SUM(Work_Hours) AS total_work_hours FROM ComplaintUpdates;

-- Query 169
SELECT AVG(Work_Hours) AS average_work_hours FROM ComplaintUpdates;

-- Query 170
SELECT MIN(Work_Hours) AS minimum_work_hours FROM ComplaintUpdates;

-- Query 171
SELECT MAX(Work_Hours) AS maximum_work_hours FROM ComplaintUpdates;

-- Query 172
SELECT MIN(Response_Hours) AS fastest_response_hours FROM Priorities;

-- Query 173
SELECT MAX(Resolution_Hours) AS maximum_resolution_hours FROM Priorities;

-- Query 174
SELECT AVG(Estimated_Days) AS average_estimated_days FROM ResolutionTypes;

-- Query 175
SELECT SUM(Estimated_Days) AS total_estimated_days FROM ResolutionTypes;

-- Query 176
SELECT MIN(Created_Date) AS first_complaint FROM Complaints;

-- Query 177
SELECT MAX(Created_Date) AS latest_complaint FROM Complaints;

-- Query 178
SELECT MIN(Registration_Date) AS first_registration FROM Users;

-- Query 179
SELECT MAX(Registration_Date) AS latest_registration FROM Users;

-- Query 180
SELECT COUNT(Phone) AS users_with_phone FROM Users;

-- Query 181
SELECT COUNT(ResolutionType_ID) AS complaints_with_resolution_type FROM Complaints;

-- Query 182
SELECT COUNT(Completed_Date) AS completed_assignments_with_date FROM Assignments;

-- Query 183
SELECT COUNT(Read_Date) AS notifications_read_with_date FROM Notifications;

-- Query 184
SELECT SUM(Escalation_Level) AS sum_escalation_levels FROM Escalations;

-- Query 185
SELECT AVG(Expected_Days) AS average_subcategory_days FROM SubCategories;


-- 7. JOINS AND MULTIPLE-TABLE JOINS 

-- Query 186
SELECT u.Full_Name, r.Role_Name FROM Users u JOIN Roles r ON u.Role_ID = r.Role_ID;

-- Query 187
SELECT c.Complaint_ID, c.Complaint_Title, u.Full_Name FROM Complaints c JOIN Users u ON c.User_ID = u.User_ID;

-- Query 188
SELECT c.Complaint_ID, s.Status_Name FROM Complaints c JOIN Statuses s ON c.Status_ID = s.Status_ID;

-- Query 189
SELECT c.Complaint_ID, p.Priority_Name FROM Complaints c JOIN Priorities p ON c.Priority_ID = p.Priority_ID;

-- Query 190
SELECT sc.SubCategory_Name, cat.Category_Name FROM SubCategories sc JOIN Categories cat ON sc.Category_ID = cat.Category_ID;

-- Query 191
SELECT sc.SubCategory_Name, p.Priority_Name FROM SubCategories sc JOIN Priorities p ON sc.Priority_ID = p.Priority_ID;

-- Query 192
SELECT st.Staff_ID, u.Full_Name, st.Designation FROM Staff st JOIN Users u ON st.User_ID = u.User_ID;

-- Query 193
SELECT st.Staff_ID, d.Department_Name FROM Staff st JOIN Departments d ON st.Department_ID = d.Department_ID;

-- Query 194
SELECT rt.Resolution_Name, d.Department_Name FROM ResolutionTypes rt JOIN Departments d ON rt.Department_ID = d.Department_ID;

-- Query 195
SELECT c.Complaint_ID, l.Address, l.City FROM Complaints c JOIN Locations l ON c.Location_ID = l.Location_ID;

-- Query 196
SELECT a.Assignment_ID, c.Complaint_Title, a.Assignment_Status FROM Assignments a JOIN Complaints c ON a.Complaint_ID = c.Complaint_ID;

-- Query 197
SELECT a.Assignment_ID, st.Designation FROM Assignments a JOIN Staff st ON a.Staff_ID = st.Staff_ID;

-- Query 198
SELECT a.Assignment_ID, u.Full_Name AS assigned_by FROM Assignments a JOIN Users u ON a.Assigned_By = u.User_ID;

-- Query 199
SELECT cu.Update_ID, c.Complaint_Title, cu.Update_Message FROM ComplaintUpdates cu JOIN Complaints c ON cu.Complaint_ID = c.Complaint_ID;

-- Query 200
SELECT cu.Update_ID, st.Designation, cu.Work_Hours FROM ComplaintUpdates cu JOIN Staff st ON cu.Staff_ID = st.Staff_ID;

-- Query 201
SELECT cu.Update_ID, s.Status_Name FROM ComplaintUpdates cu JOIN Statuses s ON cu.Status_ID = s.Status_ID;

-- Query 202
SELECT cv.Verification_ID, c.Complaint_Title, cv.Verification_Status FROM ComplaintVerification cv JOIN Complaints c ON cv.Complaint_ID = c.Complaint_ID;

-- Query 203
SELECT cv.Verification_ID, d.Department_Name FROM ComplaintVerification cv JOIN Departments d ON cv.Department_ID = d.Department_ID;

-- Query 204
SELECT co.Comment_ID, c.Complaint_Title, co.Comment_Text FROM Comments co JOIN Complaints c ON co.Complaint_ID = c.Complaint_ID;

-- Query 205
SELECT co.Comment_ID, u.Full_Name, co.Comment_Text FROM Comments co JOIN Users u ON co.User_ID = u.User_ID;

-- Query 206
SELECT f.Feedback_ID, c.Complaint_Title, f.Rating FROM Feedback f JOIN Complaints c ON f.Complaint_ID = c.Complaint_ID;

-- Query 207
SELECT f.Feedback_ID, u.Full_Name, f.Rating FROM Feedback f JOIN Users u ON f.User_ID = u.User_ID;

-- Query 208
SELECT n.Notification_ID, u.Full_Name, n.Message FROM Notifications n JOIN Users u ON n.User_ID = u.User_ID;

-- Query 209
SELECT n.Notification_ID, c.Complaint_Title, n.Notification_Type FROM Notifications n JOIN Complaints c ON n.Complaint_ID = c.Complaint_ID;

-- Query 210
SELECT e.Escalation_ID, c.Complaint_Title, e.Escalation_Status FROM Escalations e JOIN Complaints c ON e.Complaint_ID = c.Complaint_ID;

-- Query 211
SELECT e.Escalation_ID, d.Department_Name, e.Escalation_Level FROM Escalations e JOIN Departments d ON e.Department_ID = d.Department_ID;

-- Query 212
SELECT h.History_ID, c.Complaint_Title, h.Action_Type FROM ComplaintHistory h JOIN Complaints c ON h.Complaint_ID = c.Complaint_ID;

-- Query 213
SELECT h.History_ID, s.Status_Name AS new_status FROM ComplaintHistory h JOIN Statuses s ON h.New_Status_ID = s.Status_ID;

-- Query 214
SELECT al.Audit_ID, u.Full_Name, al.Action FROM AuditLogs al JOIN Users u ON al.User_ID = u.User_ID;

-- Query 215
SELECT c.Complaint_ID, u.Full_Name, cat.Category_Name FROM Complaints c JOIN Users u ON c.User_ID=u.User_ID JOIN SubCategories sc ON c.SubCategory_ID=sc.SubCategory_ID JOIN Categories cat ON sc.Category_ID=cat.Category_ID;

-- Query 216
SELECT c.Complaint_ID, c.Complaint_Title, s.Status_Name, p.Priority_Name FROM Complaints c JOIN Statuses s ON c.Status_ID=s.Status_ID JOIN Priorities p ON c.Priority_ID=p.Priority_ID;

-- Query 217
SELECT c.Complaint_ID, u.Full_Name, l.City, s.Status_Name FROM Complaints c JOIN Users u ON c.User_ID=u.User_ID JOIN Locations l ON c.Location_ID=l.Location_ID JOIN Statuses s ON c.Status_ID=s.Status_ID;

-- Query 218
SELECT c.Complaint_ID, sc.SubCategory_Name, p.Priority_Name, cat.Category_Name FROM Complaints c JOIN SubCategories sc ON c.SubCategory_ID=sc.SubCategory_ID JOIN Priorities p ON c.Priority_ID=p.Priority_ID JOIN Categories cat ON sc.Category_ID=cat.Category_ID;

-- Query 219
SELECT c.Complaint_ID, rt.Resolution_Name, d.Department_Name FROM Complaints c LEFT JOIN ResolutionTypes rt ON c.ResolutionType_ID=rt.ResolutionType_ID LEFT JOIN Departments d ON rt.Department_ID=d.Department_ID;

-- Query 220
SELECT st.Staff_ID, u.Full_Name, d.Department_Name FROM Staff st JOIN Users u ON st.User_ID=u.User_ID JOIN Departments d ON st.Department_ID=d.Department_ID;

-- Query 221
SELECT a.Assignment_ID, c.Complaint_Title, st.Designation, d.Department_Name FROM Assignments a JOIN Complaints c ON a.Complaint_ID=c.Complaint_ID JOIN Staff st ON a.Staff_ID=st.Staff_ID JOIN Departments d ON st.Department_ID=d.Department_ID;

-- Query 222
SELECT cu.Update_ID, c.Complaint_Title, st.Designation, s.Status_Name FROM ComplaintUpdates cu JOIN Complaints c ON cu.Complaint_ID=c.Complaint_ID JOIN Staff st ON cu.Staff_ID=st.Staff_ID JOIN Statuses s ON cu.Status_ID=s.Status_ID;

-- Query 223
SELECT cv.Verification_ID, c.Complaint_Title, st.Designation, d.Department_Name, l.City FROM ComplaintVerification cv JOIN Complaints c ON cv.Complaint_ID=c.Complaint_ID JOIN Staff st ON cv.Staff_ID=st.Staff_ID JOIN Departments d ON cv.Department_ID=d.Department_ID JOIN Locations l ON cv.Location_ID=l.Location_ID;

-- Query 224
SELECT f.Feedback_ID, c.Complaint_Title, u.Full_Name, f.Rating FROM Feedback f JOIN Complaints c ON f.Complaint_ID=c.Complaint_ID JOIN Users u ON f.User_ID=u.User_ID;

-- Query 225
SELECT e.Escalation_ID, c.Complaint_Title, u.Full_Name, d.Department_Name FROM Escalations e JOIN Complaints c ON e.Complaint_ID=c.Complaint_ID JOIN Users u ON e.User_ID=u.User_ID JOIN Departments d ON e.Department_ID=d.Department_ID;

-- Query 226
SELECT n.Notification_ID, u.Full_Name, c.Complaint_Title, n.Channel FROM Notifications n JOIN Users u ON n.User_ID=u.User_ID LEFT JOIN Complaints c ON n.Complaint_ID=c.Complaint_ID;

-- Query 227
SELECT h.History_ID, c.Complaint_Title, u.Full_Name, old_s.Status_Name AS old_status, new_s.Status_Name AS new_status FROM ComplaintHistory h JOIN Complaints c ON h.Complaint_ID=c.Complaint_ID JOIN Users u ON h.User_ID=u.User_ID LEFT JOIN Statuses old_s ON h.Old_Status_ID=old_s.Status_ID JOIN Statuses new_s ON h.New_Status_ID=new_s.Status_ID;

-- Query 228
SELECT co.Comment_ID, c.Complaint_Title, u.Full_Name, parent.Comment_Text AS parent_comment FROM Comments co JOIN Complaints c ON co.Complaint_ID=c.Complaint_ID JOIN Users u ON co.User_ID=u.User_ID LEFT JOIN Comments parent ON co.Parent_Comment_ID=parent.Comment_ID;

-- Query 229
SELECT c.Complaint_ID, u.Full_Name, d.Department_Name FROM Complaints c JOIN Users u ON c.User_ID=u.User_ID JOIN Assignments a ON c.Complaint_ID=a.Complaint_ID JOIN Staff st ON a.Staff_ID=st.Staff_ID JOIN Departments d ON st.Department_ID=d.Department_ID;

-- Query 230
SELECT c.Complaint_ID, cat.Category_Name, sc.SubCategory_Name, s.Status_Name, p.Priority_Name FROM Complaints c JOIN SubCategories sc ON c.SubCategory_ID=sc.SubCategory_ID JOIN Categories cat ON sc.Category_ID=cat.Category_ID JOIN Statuses s ON c.Status_ID=s.Status_ID JOIN Priorities p ON c.Priority_ID=p.Priority_ID;

-- Query 231
SELECT u.Full_Name, r.Role_Name, u.City FROM Users u JOIN Roles r ON u.Role_ID=r.Role_ID WHERE r.Access_Level='High';

-- Query 232
SELECT c.Complaint_ID, c.Complaint_Title, l.City FROM Complaints c JOIN Locations l ON c.Location_ID=l.Location_ID WHERE l.City='Kozhikode';

-- Query 233
SELECT c.Complaint_ID, c.Complaint_Title, p.Priority_Name FROM Complaints c JOIN Priorities p ON c.Priority_ID=p.Priority_ID WHERE p.Priority_Name='Critical';

-- Query 234
SELECT c.Complaint_ID, c.Complaint_Title, s.Status_Name FROM Complaints c JOIN Statuses s ON c.Status_ID=s.Status_ID WHERE s.Status_Type='Processing';

-- Query 235
SELECT st.Staff_ID, u.Full_Name, d.Department_Name FROM Staff st JOIN Users u ON st.User_ID=u.User_ID JOIN Departments d ON st.Department_ID=d.Department_ID WHERE st.Staff_Status='Active';

-- Query 236
SELECT rt.Resolution_Name, d.Department_Name, rt.Estimated_Days FROM ResolutionTypes rt JOIN Departments d ON rt.Department_ID=d.Department_ID WHERE rt.Estimated_Days<=3;

-- Query 237
SELECT a.Assignment_ID, c.Complaint_Title, a.Due_Date FROM Assignments a JOIN Complaints c ON a.Complaint_ID=c.Complaint_ID WHERE a.Assignment_Status='In Progress';

-- Query 238
SELECT cu.Update_ID, c.Complaint_Title, cu.Work_Hours FROM ComplaintUpdates cu JOIN Complaints c ON cu.Complaint_ID=c.Complaint_ID WHERE cu.Work_Hours>=4;

-- Query 239
SELECT f.Feedback_ID, u.Full_Name, f.Rating FROM Feedback f JOIN Users u ON f.User_ID=u.User_ID WHERE f.Rating=5;

-- Query 240
SELECT e.Escalation_ID, c.Complaint_Title, e.Escalation_Level FROM Escalations e JOIN Complaints c ON e.Complaint_ID=c.Complaint_ID WHERE e.Escalation_Status='Escalated';

-- Query 241
SELECT n.Notification_ID, u.Full_Name, n.Message FROM Notifications n JOIN Users u ON n.User_ID=u.User_ID WHERE n.Is_Read='No';

-- Query 242
SELECT c.Complaint_ID, u.Full_Name, co.Comment_Text FROM Complaints c JOIN Users u ON c.User_ID=u.User_ID JOIN Comments co ON c.Complaint_ID=co.Complaint_ID;

-- Query 243
SELECT c.Complaint_ID, c.Complaint_Title, f.Rating, f.Feedback_Text FROM Complaints c LEFT JOIN Feedback f ON c.Complaint_ID=f.Complaint_ID;

-- Query 244
SELECT c.Complaint_ID, c.Complaint_Title, a.Assignment_Status FROM Complaints c LEFT JOIN Assignments a ON c.Complaint_ID=a.Complaint_ID;

-- Query 245
SELECT d.Department_Name, rt.Resolution_Name, rt.Requires_Approval FROM Departments d JOIN ResolutionTypes rt ON d.Department_ID=rt.Department_ID;

-- Query 246
SELECT cat.Category_Name, sc.SubCategory_Name, sc.Expected_Days FROM Categories cat JOIN SubCategories sc ON cat.Category_ID=sc.Category_ID ORDER BY cat.Category_Name;

-- Query 247
SELECT p.Priority_Name, sc.SubCategory_Name, sc.Expected_Days FROM Priorities p JOIN SubCategories sc ON p.Priority_ID=sc.Priority_ID;

-- Query 248
SELECT c.Complaint_ID, c.Complaint_Title, cv.Verification_Status FROM Complaints c LEFT JOIN ComplaintVerification cv ON c.Complaint_ID=cv.Complaint_ID;

-- Query 249
SELECT c.Complaint_ID, c.Complaint_Title, e.Escalation_Status FROM Complaints c LEFT JOIN Escalations e ON c.Complaint_ID=e.Complaint_ID;

-- Query 250
SELECT c.Complaint_ID, c.Complaint_Title, h.Action_Type, h.Changed_Date FROM Complaints c JOIN ComplaintHistory h ON c.Complaint_ID=h.Complaint_ID;

-- Query 251
SELECT u.Full_Name, n.Notification_Type, n.Created_Date FROM Users u JOIN Notifications n ON u.User_ID=n.User_ID;

-- Query 252
SELECT d.Department_Name, st.Designation, st.Specialization FROM Departments d JOIN Staff st ON d.Department_ID=st.Department_ID;

-- Query 253
SELECT c.Complaint_ID, loc.Address, loc.Area, loc.City FROM Complaints c JOIN Locations loc ON c.Location_ID=loc.Location_ID;

-- Query 254
SELECT c.Complaint_ID, rt.Resolution_Name, rt.Estimated_Days FROM Complaints c JOIN ResolutionTypes rt ON c.ResolutionType_ID=rt.ResolutionType_ID;

-- Query 255
SELECT u.Full_Name, f.Rating, f.Would_Recommend FROM Users u JOIN Feedback f ON u.User_ID=f.User_ID;

-- Query 256
SELECT st.Designation, COUNT(a.Assignment_ID) AS assignment_count FROM Staff st LEFT JOIN Assignments a ON st.Staff_ID=a.Staff_ID GROUP BY st.Staff_ID, st.Designation;

-- Query 257
SELECT d.Department_Name, COUNT(st.Staff_ID) AS staff_count FROM Departments d LEFT JOIN Staff st ON d.Department_ID=st.Department_ID GROUP BY d.Department_ID, d.Department_Name;

-- Query 258
SELECT s.Status_Name, COUNT(c.Complaint_ID) AS complaint_count FROM Statuses s LEFT JOIN Complaints c ON s.Status_ID=c.Status_ID GROUP BY s.Status_ID, s.Status_Name;

-- Query 259
SELECT p.Priority_Name, COUNT(c.Complaint_ID) AS complaint_count FROM Priorities p LEFT JOIN Complaints c ON p.Priority_ID=c.Priority_ID GROUP BY p.Priority_ID, p.Priority_Name;

-- Query 260
SELECT cat.Category_Name, COUNT(c.Complaint_ID) AS complaint_count FROM Categories cat JOIN SubCategories sc ON cat.Category_ID=sc.Category_ID LEFT JOIN Complaints c ON sc.SubCategory_ID=c.SubCategory_ID GROUP BY cat.Category_ID, cat.Category_Name;

-- Query 261
SELECT u.Full_Name, COUNT(c.Complaint_ID) AS complaint_count FROM Users u LEFT JOIN Complaints c ON u.User_ID=c.User_ID GROUP BY u.User_ID, u.Full_Name;

-- Query 262
SELECT d.Department_Name, AVG(rt.Estimated_Days) AS avg_days FROM Departments d JOIN ResolutionTypes rt ON d.Department_ID=rt.Department_ID GROUP BY d.Department_ID, d.Department_Name;

-- Query 263
SELECT c.Complaint_ID, c.Complaint_Title, a.Assigned_Date, a.Due_Date, a.Completed_Date FROM Complaints c JOIN Assignments a ON c.Complaint_ID=a.Complaint_ID;

-- Query 264
SELECT c.Complaint_ID, c.Complaint_Title, cv.Verification_Date, cv.Verification_Notes FROM Complaints c JOIN ComplaintVerification cv ON c.Complaint_ID=cv.Complaint_ID;

-- Query 265
SELECT c.Complaint_ID, c.Complaint_Title, e.Escalation_Date, e.Escalation_Reason FROM Complaints c JOIN Escalations e ON c.Complaint_ID=e.Complaint_ID;


-- 8. SUBQUERIES (45)

-- Query 266
SELECT * FROM Users WHERE Role_ID = (SELECT Role_ID FROM Roles WHERE Role_Name='Citizen');

-- Query 267
SELECT * FROM Complaints WHERE User_ID IN (SELECT User_ID FROM Users WHERE City='Kochi');

-- Query 268
SELECT * FROM Complaints WHERE Status_ID IN (SELECT Status_ID FROM Statuses WHERE Status_Type='Processing');

-- Query 269
SELECT * FROM Complaints WHERE Priority_ID = (SELECT Priority_ID FROM Priorities WHERE Priority_Name='Critical');

-- Query 270
SELECT * FROM Staff WHERE Department_ID IN (SELECT Department_ID FROM Departments WHERE Department_Name LIKE '%Department%');

-- Query 271
SELECT * FROM SubCategories WHERE Category_ID = (SELECT Category_ID FROM Categories WHERE Category_Name='Water Supply');

-- Query 272
SELECT * FROM SubCategories WHERE Priority_ID IN (SELECT Priority_ID FROM Priorities WHERE Response_Hours<=6);

-- Query 273
SELECT * FROM Complaints WHERE Location_ID IN (SELECT Location_ID FROM Locations WHERE City='Kozhikode');

-- Query 274
SELECT * FROM Assignments WHERE Staff_ID IN (SELECT Staff_ID FROM Staff WHERE Staff_Status='Active');

-- Query 275
SELECT * FROM Feedback WHERE User_ID IN (SELECT User_ID FROM Users WHERE Gender='Female');

-- Query 276
SELECT * FROM Notifications WHERE User_ID IN (SELECT User_ID FROM Users WHERE City='Kochi');

-- Query 277
SELECT * FROM Escalations WHERE Department_ID IN (SELECT Department_ID FROM Departments WHERE Status='Active');

-- Query 278
SELECT * FROM Complaints WHERE Created_Date > (SELECT MIN(Created_Date) FROM Complaints);

-- Query 279
SELECT * FROM Complaints WHERE Created_Date = (SELECT MAX(Created_Date) FROM Complaints);

-- Query 280
SELECT * FROM Feedback WHERE Rating > (SELECT AVG(Rating) FROM Feedback);

-- Query 281
SELECT * FROM Priorities WHERE Response_Hours < (SELECT AVG(Response_Hours) FROM Priorities);

-- Query 282
SELECT * FROM ResolutionTypes WHERE Estimated_Days > (SELECT AVG(Estimated_Days) FROM ResolutionTypes);

-- Query 283
SELECT * FROM ComplaintUpdates WHERE Work_Hours > (SELECT AVG(Work_Hours) FROM ComplaintUpdates);

-- Query 284
SELECT * FROM Users WHERE EXISTS (SELECT 1 FROM Complaints c WHERE c.User_ID=Users.User_ID);

-- Query 285
SELECT * FROM Users WHERE NOT EXISTS (SELECT 1 FROM Complaints c WHERE c.User_ID=Users.User_ID);

-- Query 286
SELECT * FROM Complaints c WHERE EXISTS (SELECT 1 FROM Feedback f WHERE f.Complaint_ID=c.Complaint_ID);

-- Query 287
SELECT * FROM Complaints c WHERE NOT EXISTS (SELECT 1 FROM Feedback f WHERE f.Complaint_ID=c.Complaint_ID);

-- Query 288
SELECT * FROM Complaints c WHERE EXISTS (SELECT 1 FROM Assignments a WHERE a.Complaint_ID=c.Complaint_ID AND a.Is_Current='Yes');

-- Query 289
SELECT * FROM Complaints c WHERE EXISTS (SELECT 1 FROM Escalations e WHERE e.Complaint_ID=c.Complaint_ID AND e.Escalation_Status='Escalated');

-- Query 290
SELECT * FROM Departments d WHERE EXISTS (SELECT 1 FROM Staff s WHERE s.Department_ID=d.Department_ID);

-- Query 291
SELECT * FROM Departments d WHERE NOT EXISTS (SELECT 1 FROM Staff s WHERE s.Department_ID=d.Department_ID);

-- Query 292
SELECT * FROM Categories cat WHERE EXISTS (SELECT 1 FROM SubCategories sc WHERE sc.Category_ID=cat.Category_ID);

-- Query 293
SELECT * FROM Roles r WHERE EXISTS (SELECT 1 FROM Users u WHERE u.Role_ID=r.Role_ID);

-- Query 294
SELECT * FROM Users WHERE Registration_Date < (SELECT AVG(Registration_Date) FROM Users);

-- Query 295
SELECT * FROM Complaints WHERE Priority_ID = (SELECT MAX(Priority_ID) FROM Complaints);

-- Query 296
SELECT * FROM Statuses WHERE Status_Order = (SELECT MIN(Status_Order) FROM Statuses);

-- Query 297
SELECT * FROM Locations WHERE City IN (SELECT City FROM Users GROUP BY City);

-- Query 298
SELECT Department_ID, (SELECT COUNT(*) FROM Staff s WHERE s.Department_ID=d.Department_ID) AS staff_count FROM Departments d;

-- Query 299
SELECT User_ID, (SELECT COUNT(*) FROM Complaints c WHERE c.User_ID=u.User_ID) AS complaint_count FROM Users u;

-- Query 300
SELECT Complaint_ID, (SELECT COUNT(*) FROM ComplaintUpdates cu WHERE cu.Complaint_ID=c.Complaint_ID) AS update_count FROM Complaints c;

-- Query 301
SELECT Complaint_ID, (SELECT COUNT(*) FROM Notifications n WHERE n.Complaint_ID=c.Complaint_ID) AS notification_count FROM Complaints c;

-- Query 302
SELECT Staff_ID, (SELECT SUM(Work_Hours) FROM ComplaintUpdates cu WHERE cu.Staff_ID=st.Staff_ID) AS hours FROM Staff st;

-- Query 303
SELECT Category_ID, (SELECT COUNT(*) FROM SubCategories sc WHERE sc.Category_ID=cat.Category_ID) AS subcategory_count FROM Categories cat;

-- Query 304
SELECT Priority_ID, (SELECT COUNT(*) FROM Complaints c WHERE c.Priority_ID=p.Priority_ID) AS complaint_count FROM Priorities p;

-- Query 305
SELECT Status_ID, (SELECT COUNT(*) FROM Complaints c WHERE c.Status_ID=s.Status_ID) AS complaint_count FROM Statuses s;

-- Query 306
SELECT * FROM Feedback WHERE Rating = (SELECT MAX(Rating) FROM Feedback);

-- Query 307
SELECT * FROM Escalations WHERE Escalation_Level = (SELECT MAX(Escalation_Level) FROM Escalations);

-- Query 308
SELECT * FROM Assignments WHERE Due_Date < (SELECT MAX(Due_Date) FROM Assignments);

-- Query 309
SELECT * FROM Users WHERE Role_ID IN (SELECT Role_ID FROM Roles WHERE Can_Delete='Yes');

-- Query 310
SELECT * FROM Complaints WHERE ResolutionType_ID IN (SELECT ResolutionType_ID FROM ResolutionTypes WHERE Requires_Approval='Yes');


-- 9. IN, BETWEEN, LIKE, EXISTS (45)

-- Query 311
SELECT * FROM Users WHERE Role_ID IN (101,102,103);

-- Query 312
SELECT * FROM Users WHERE City IN ('Kochi','Kannur','Kozhikode');

-- Query 313
SELECT * FROM Complaints WHERE Status_ID IN (303,304,305);

-- Query 314
SELECT * FROM Complaints WHERE Priority_ID IN (403,404,405);

-- Query 315
SELECT * FROM Priorities WHERE Priority_Name IN ('Low','Medium','High');

-- Query 316
SELECT * FROM Statuses WHERE Status_Order BETWEEN 5 AND 10;

-- Query 317
SELECT * FROM Users WHERE Registration_Date BETWEEN '2026-02-01' AND '2026-02-15';

-- Query 318
SELECT * FROM Complaints WHERE Created_Date BETWEEN '2026-02-05' AND '2026-02-15 23:59:59';

-- Query 319
SELECT * FROM Assignments WHERE Due_Date BETWEEN '2026-02-10' AND '2026-02-20';

-- Query 320
SELECT * FROM Feedback WHERE Rating BETWEEN 3 AND 5;

-- Query 321
SELECT * FROM ComplaintUpdates WHERE Work_Hours BETWEEN 2 AND 4;

-- Query 322
SELECT * FROM Locations WHERE Pincode BETWEEN '673000' AND '673999';

-- Query 323
SELECT * FROM Users WHERE Full_Name LIKE 'A%';

-- Query 324
SELECT * FROM Users WHERE Full_Name LIKE '%a';

-- Query 325
SELECT * FROM Users WHERE Email LIKE '%gmail.com';

-- Query 326
SELECT * FROM Departments WHERE Department_Name LIKE '%Safety%';

-- Query 327
SELECT * FROM Categories WHERE Keywords LIKE '%water%';

-- Query 328
SELECT * FROM SubCategories WHERE SubCategory_Name LIKE '%Issue%';

-- Query 329
SELECT * FROM Complaints WHERE Complaint_Title LIKE '%road%';

-- Query 330
SELECT * FROM Comments WHERE Comment_Text LIKE '%problem%';

-- Query 331
SELECT * FROM Users WHERE Phone LIKE '98765010%';

-- Query 332
SELECT * FROM Locations WHERE Address LIKE '%Road%';

-- Query 333
SELECT * FROM Staff WHERE Designation LIKE '%Officer%';

-- Query 334
SELECT * FROM Notifications WHERE Message LIKE '%resolved%';

-- Query 335
SELECT * FROM Complaints c WHERE EXISTS (SELECT 1 FROM Assignments a WHERE a.Complaint_ID=c.Complaint_ID);

-- Query 336
SELECT * FROM Complaints c WHERE EXISTS (SELECT 1 FROM Feedback f WHERE f.Complaint_ID=c.Complaint_ID);

-- Query 337
SELECT * FROM Complaints c WHERE EXISTS (SELECT 1 FROM ComplaintUpdates cu WHERE cu.Complaint_ID=c.Complaint_ID);

-- Query 338
SELECT * FROM Complaints c WHERE EXISTS (SELECT 1 FROM Escalations e WHERE e.Complaint_ID=c.Complaint_ID);

-- Query 339
SELECT * FROM Users u WHERE EXISTS (SELECT 1 FROM Notifications n WHERE n.User_ID=u.User_ID);

-- Query 340
SELECT * FROM Staff st WHERE EXISTS (SELECT 1 FROM Assignments a WHERE a.Staff_ID=st.Staff_ID);

-- Query 341
SELECT * FROM Departments d WHERE EXISTS (SELECT 1 FROM ResolutionTypes rt WHERE rt.Department_ID=d.Department_ID);

-- Query 342
SELECT * FROM Categories cat WHERE EXISTS (SELECT 1 FROM SubCategories sc WHERE sc.Category_ID=cat.Category_ID);

-- Query 343
SELECT * FROM Users WHERE Role_ID NOT IN (SELECT Role_ID FROM Roles WHERE Access_Level='High');

-- Query 344
SELECT * FROM Complaints WHERE Location_ID IN (SELECT Location_ID FROM Locations WHERE City='Kozhikode');

-- Query 345
SELECT * FROM Complaints WHERE User_ID IN (SELECT User_ID FROM Users WHERE Gender='Female');

-- Query 346
SELECT * FROM SubCategories WHERE Priority_ID IN (SELECT Priority_ID FROM Priorities WHERE Resolution_Hours<=24);

-- Query 347
SELECT * FROM Staff WHERE Department_ID BETWEEN 201 AND 210;

-- Query 348
SELECT * FROM Categories WHERE Display_Order BETWEEN 1 AND 10;

-- Query 349
SELECT * FROM Priorities WHERE Response_Hours BETWEEN 1 AND 12;

-- Query 350
SELECT * FROM Escalations WHERE Escalation_Level IN (1,2,3);

-- Query 351
SELECT * FROM AuditLogs WHERE Action IN ('INSERT','UPDATE');

-- Query 352
SELECT * FROM Notifications WHERE Channel IN ('Email','SMS');

-- Query 353
SELECT * FROM ComplaintVerification WHERE Verification_Status LIKE 'Ver%';

-- Query 354
SELECT * FROM Locations WHERE City LIKE 'K%';

-- Query 355
SELECT * FROM Departments WHERE Email LIKE '%@complaints.com';


-- 10. DATE AND TIME QUERIES (25)

-- Query 356
SELECT * FROM Users WHERE Registration_Date = '2026-02-01';

-- Query 357
SELECT * FROM Users WHERE YEAR(Registration_Date)=2026;

-- Query 358
SELECT * FROM Users WHERE MONTH(Registration_Date)=2;

-- Query 359
SELECT * FROM Complaints WHERE DATE(Created_Date)='2026-02-10';

-- Query 360
SELECT * FROM Complaints WHERE YEAR(Created_Date)=2026 AND MONTH(Created_Date)=2;

-- Query 361
SELECT Complaint_ID, DATE(Created_Date) AS complaint_date FROM Complaints;

-- Query 362
SELECT Complaint_ID, TIME(Created_Date) AS complaint_time FROM Complaints;

-- Query 363
SELECT Complaint_ID, DATE_FORMAT(Created_Date,'%d-%m-%Y') AS formatted_date FROM Complaints;

-- Query 364
SELECT Complaint_ID, DATE_FORMAT(Created_Date,'%H:%i') AS formatted_time FROM Complaints;

-- Query 365
SELECT * FROM Assignments WHERE Assigned_Date < Due_Date;

-- Query 366
SELECT * FROM Assignments WHERE Completed_Date IS NOT NULL AND Completed_Date <= Due_Date;

-- Query 367
SELECT Assignment_ID, DATEDIFF(Due_Date, Assigned_Date) AS allowed_days FROM Assignments;

-- Query 368
SELECT Assignment_ID, DATEDIFF(Completed_Date, Assigned_Date) AS days_taken FROM Assignments WHERE Completed_Date IS NOT NULL;

-- Query 369
SELECT * FROM Assignments WHERE Due_Date < '2026-02-15' AND Completed_Date IS NULL;

-- Query 370
SELECT * FROM ComplaintUpdates WHERE DATE(Update_Date) >= '2026-02-15';

-- Query 371
SELECT * FROM Comments WHERE DATE(Comment_Date) BETWEEN '2026-02-01' AND '2026-02-10';

-- Query 372
SELECT * FROM Feedback WHERE Submitted_Date >= '2026-02-15';

-- Query 373
SELECT * FROM Notifications WHERE DATE(Created_Date)='2026-02-19';

-- Query 374
SELECT * FROM Escalations WHERE Escalation_Date >= '2026-02-15';

-- Query 375
SELECT Escalation_ID, DATEDIFF(Resolution_Date, Escalation_Date) AS days_to_resolve FROM Escalations WHERE Resolution_Date IS NOT NULL;

-- Query 376
SELECT * FROM ComplaintHistory WHERE Changed_Date >= '2026-02-10 00:00:00';

-- Query 377
SELECT * FROM AuditLogs WHERE DATE(Action_Date)='2026-02-17';

-- Query 378
SELECT NOW() AS current_datetime;

-- Query 379
SELECT CURDATE() AS current_date;

-- Query 380
SELECT DATE_ADD('2026-02-01', INTERVAL 7 DAY) AS date_after_one_week;


-- 11. UPDATE (25) — run individually; these modify data

-- Query 381
UPDATE Users SET City='Kozhikode' WHERE User_ID=701;

-- Query 382
UPDATE Users SET Account_Status='Active' WHERE User_ID=702;

-- Query 383
UPDATE Roles SET Description='Can submit and track complaints' WHERE Role_ID=101;

-- Query 384
UPDATE Departments SET Working_Hours='09:00 AM - 05:30 PM' WHERE Department_ID=201;

-- Query 385
UPDATE Statuses SET Updated_Date='2026-02-25' WHERE Status_ID=301;

-- Query 386
UPDATE Priorities SET Updated_Date='2026-02-25' WHERE Priority_ID=401;

-- Query 387
UPDATE Categories SET Updated_Date='2026-02-25' WHERE Category_ID=501;

-- Query 388
UPDATE Locations SET Location_Type='Urban' WHERE Location_ID=601;

-- Query 389
UPDATE Staff SET Specialization='Pipeline inspection and repair' WHERE Staff_ID=801;

-- Query 390
UPDATE ResolutionTypes SET Estimated_Days=4 WHERE ResolutionType_ID=901;

-- Query 391
UPDATE SubCategories SET Expected_Days=4 WHERE SubCategory_ID=1001;

-- Query 392
UPDATE Complaints SET Complaint_Title='Water Pipeline Leakage - Updated' WHERE Complaint_ID=1101;

-- Query 393
UPDATE Complaints SET Status_ID=316 WHERE Complaint_ID=1101;

-- Query 394
UPDATE Assignments SET Remarks='Follow-up inspection required' WHERE Assignment_ID=1201;

-- Query 395
UPDATE Assignments SET Assignment_Status='In Progress' WHERE Assignment_ID=1202;

-- Query 396
UPDATE ComplaintUpdates SET Work_Hours=3 WHERE Update_ID=1301;

-- Query 397
UPDATE ComplaintVerification SET Verification_Notes='Verified during follow-up inspection' WHERE Verification_ID=1401;

-- Query 398
UPDATE Comments SET Comment_Text='Water leakage continues to affect nearby residents.' WHERE Comment_ID=1501;

-- Query 399
UPDATE Feedback SET Feedback_Text='The complaint handling was satisfactory.' WHERE Feedback_ID=1601;

-- Query 400
UPDATE Notifications SET Is_Read='Yes', Read_Date=NOW() WHERE Notification_ID=1706;

-- Query 401
UPDATE Escalations SET Escalation_Status='In Progress' WHERE Escalation_ID=1802;

-- Query 402
UPDATE ComplaintHistory SET Remarks='Reviewed for accuracy' WHERE History_ID=1901;

-- Query 403
UPDATE AuditLogs SET Action_Description='Record reviewed' WHERE Audit_ID=2001;

-- Query 404
UPDATE Users SET Phone='9876501999' WHERE User_ID=701;

-- Query 405
UPDATE Priorities SET Response_Hours=23 WHERE Priority_ID=401;


-- 12. DELETE (15) — run individually; these delete rows

-- Query 406
DELETE FROM Comments WHERE Comment_ID=1520;

-- Query 407
DELETE FROM Notifications WHERE Notification_ID=1720;

-- Query 408
DELETE FROM AuditLogs WHERE Audit_ID=2020;

-- Query 409
DELETE FROM ComplaintHistory WHERE History_ID=1920;

-- Query 410
DELETE FROM Feedback WHERE Feedback_ID=1620;

-- Query 411
DELETE FROM ComplaintUpdates WHERE Update_ID=1320;

-- Query 412
DELETE FROM ComplaintVerification WHERE Verification_ID=1420;

-- Query 413
DELETE FROM Escalations WHERE Escalation_ID=1820;

-- Query 414
DELETE FROM Assignments WHERE Assignment_ID=1220;

-- Query 415
DELETE FROM Complaints WHERE Complaint_ID=1120;

-- Query 416
DELETE FROM SubCategories WHERE SubCategory_ID=1020;

-- Query 417
DELETE FROM ResolutionTypes WHERE ResolutionType_ID=920;

-- Query 418
DELETE FROM Staff WHERE Staff_ID=820;

-- Query 419
DELETE FROM Users WHERE User_ID=730;

-- Query 420
DELETE FROM Locations WHERE Location_ID=620;


-- 13. INSERT (15) — examples; check foreign keys and unique values

-- Query 421
INSERT INTO Roles (Role_ID,Role_Name,Description,Access_Level,Status,Created_Date,Can_Create,Can_Update,Can_Delete,Can_View) VALUES (121,'Auditor','Reviews system records','High','Active','2026-03-01','No','No','No','Yes');

-- Query 422
INSERT INTO Departments (Department_ID,Department_Name,Department_Code,Description,Phone,Email,Office_Location,Status,Created_Date,Working_Hours) VALUES (221,'Water Quality Department','WQUAL','Handles water quality complaints','9876500021','waterquality@complaints.com','Quality Office','Active','2026-03-01','09:00 AM - 05:00 PM');

-- Query 423
INSERT INTO Statuses (Status_ID,Status_Name,Description,Status_Order,Status_Type,Is_Final,Is_Active,Color_Code,Created_Date,Updated_Date) VALUES (321,'Reopened','Previously closed complaint reopened',21,'Processing','No','Yes','Orange','2026-03-01',NULL);

-- Query 424
INSERT INTO Priorities (Priority_ID,Priority_Name,Priority_Level,Response_Hours,Resolution_Hours,Description,Color_Code,Status,Created_Date,Updated_Date) VALUES (421,'Urgent','Level 5',1,5,'Urgent complaint','Red','Active','2026-03-01',NULL);

-- Query 425
INSERT INTO Categories (Category_ID,Category_Name,Category_Code,Description,Status,Created_Date,Updated_Date,Is_Recurring,Display_Order,Keywords) VALUES (521,'Water Quality','WQUAL','Water quality concerns','Active','2026-03-01',NULL,'Yes',21,'water,quality,contamination');

-- Query 426
INSERT INTO Locations (Location_ID,Address,Area,City,District,State,Pincode,Location_Type,Latitude,Longitude) VALUES (621,'Test Street','Test Area','Kozhikode','Kozhikode','Kerala','673001','Urban','11.2588','75.7804');

-- Query 427
INSERT INTO Users (User_ID,Role_ID,Full_Name,Email,Phone,Password,Gender,Registration_Date,City,Account_Status) VALUES (731,101,'Test Citizen','testcitizen@example.com','9876501031','ChangeMe123!','Male','2026-03-01','Kozhikode','Active');

-- Query 428
INSERT INTO Staff (Staff_ID,User_ID,Department_ID,Employee_Code,Designation,Joining_Date,Specialization,Staff_Status,Work_Email,Work_Phone) VALUES (821,731,201,'EMP00021','Assistant Officer','2026-03-01','Water services','Active','assistant21@complaints.com','9876510021');

-- Query 429
INSERT INTO ResolutionTypes (ResolutionType_ID,Department_ID,Resolution_Name,Description,Estimated_Days,Status,Requires_Visit,Requires_Approval,Created_Date,Updated_Date) VALUES (921,221,'Water Quality Test','Test reported water quality issue',2,'Active','Yes','No','2026-03-01',NULL);

-- Query 430
INSERT INTO SubCategories (SubCategory_ID,Category_ID,Priority_ID,SubCategory_Name,Description,Status,Created_Date,Updated_Date,Expected_Days,Keywords) VALUES (1021,521,403,'Water Contamination','Possible water contamination','Active','2026-03-01',NULL,2,'water,contamination,quality');

-- Query 431
INSERT INTO Complaints (Complaint_ID,User_ID,SubCategory_ID,Location_ID,Status_ID,Priority_ID,ResolutionType_ID,Complaint_Title,Complaint_Description,Created_Date) VALUES (1121,731,1021,621,301,403,921,'Water Quality Concern','Water quality needs inspection.','2026-03-01 09:00:00');

-- Query 432
INSERT INTO Assignments (Assignment_ID,Complaint_ID,Staff_ID,Assigned_By,Assigned_Date,Due_Date,Completed_Date,Assignment_Status,Remarks,Is_Current) VALUES (1221,1121,821,731,'2026-03-01','2026-03-03',NULL,'Assigned','Initial assignment','Yes');

-- Query 433
INSERT INTO ComplaintUpdates (Update_ID,Complaint_ID,Staff_ID,Status_ID,Update_Message,Update_Date,Work_Hours,Action_Taken,Next_Action,Is_Internal) VALUES (1321,1121,821,303,'Water quality complaint received for review','2026-03-01 10:00:00',1,'Reviewed complaint details','Schedule water test','No');

-- Query 434
INSERT INTO Comments (Comment_ID,Complaint_ID,User_ID,Parent_Comment_ID,Comment_Text,Comment_Date,Comment_Type,Comment_Status,Is_Internal,Edited_Date) VALUES (1521,1121,731,NULL,'Please inspect the water quality soon.','2026-03-01 10:15:00','Complaint','Active','No',NULL);

-- Query 435
INSERT INTO Notifications (Notification_ID,User_ID,Complaint_ID,Notification_Type,Message,Created_Date,Is_Read,Read_Date,Priority,Channel) VALUES (1721,731,1121,'Status Update','Your water quality complaint has been submitted.','2026-03-01 09:01:00','No',NULL,'Medium','Email');


-- 14. DDL AND CONSTRAINTS (20) — schema examples; use a test database where appropriate

-- Query 436
CREATE TABLE Demo_Notes (Note_ID INT PRIMARY KEY, Note_Text VARCHAR(200) NOT NULL);

-- Query 437
ALTER TABLE Demo_Notes ADD Created_Date DATE;

-- Query 438
ALTER TABLE Demo_Notes MODIFY Note_Text VARCHAR(300) NOT NULL;

-- Query 439
ALTER TABLE Demo_Notes ADD CONSTRAINT uq_demo_note UNIQUE (Note_Text);

-- Query 440
ALTER TABLE Demo_Notes DROP INDEX uq_demo_note;

-- Query 441
CREATE INDEX idx_users_city ON Users(City);

-- Query 442
CREATE INDEX idx_complaints_created_date ON Complaints(Created_Date);

-- Query 443
CREATE INDEX idx_complaints_status ON Complaints(Status_ID);

-- Query 444
CREATE INDEX idx_assignments_staff ON Assignments(Staff_ID);

-- Query 445
CREATE INDEX idx_feedback_rating ON Feedback(Rating);

-- Query 446
ALTER TABLE Complaints ADD COLUMN Source_Channel VARCHAR(30) NULL;

-- Query 447
ALTER TABLE Complaints DROP COLUMN Source_Channel;

-- Query 448
ALTER TABLE Users ADD CONSTRAINT chk_users_gender CHECK (Gender IN ('Male','Female') OR Gender IS NULL);

-- Query 449
ALTER TABLE Feedback ADD CONSTRAINT chk_feedback_rating CHECK (Rating BETWEEN 1 AND 5);

-- Query 450
ALTER TABLE Priorities ADD CONSTRAINT chk_priority_response CHECK (Response_Hours > 0);

-- Query 451
CREATE VIEW Active_Users AS SELECT User_ID, Full_Name, Email, City FROM Users WHERE Account_Status='Active';

-- Query 452
CREATE OR REPLACE VIEW Complaint_Summary AS SELECT c.Complaint_ID,c.Complaint_Title,s.Status_Name,p.Priority_Name FROM Complaints c JOIN Statuses s ON c.Status_ID=s.Status_ID JOIN Priorities p ON c.Priority_ID=p.Priority_ID;

-- Query 453
DROP VIEW IF EXISTS Active_Users;

-- Query 454
DROP VIEW IF EXISTS Complaint_Summary;

-- Query 455
DROP TABLE IF EXISTS Demo_Notes;


-- 15. CASE, NULL, STRING AND NUMERIC FUNCTIONS (20)

-- Query 456
SELECT User_ID, Full_Name, IFNULL(City,'Unknown') AS city FROM Users;

-- Query 457
SELECT Complaint_ID, IFNULL(ResolutionType_ID,0) AS resolution_type FROM Complaints;

-- Query 458
SELECT Notification_ID, COALESCE(Read_Date,Created_Date) AS relevant_date FROM Notifications;

-- Query 459
SELECT Complaint_ID, CASE WHEN Priority_ID=405 THEN 'Emergency' WHEN Priority_ID>=403 THEN 'High' ELSE 'Normal' END AS priority_group FROM Complaints;

-- Query 460
SELECT Complaint_ID, CASE WHEN Status_ID IN (318,319,320) THEN 'Final' ELSE 'Open or processing' END AS status_group FROM Complaints;

-- Query 461
SELECT User_ID, UPPER(Full_Name) AS uppercase_name FROM Users;

-- Query 462
SELECT User_ID, LOWER(Email) AS lowercase_email FROM Users;

-- Query 463
SELECT Full_Name, LENGTH(Full_Name) AS name_length FROM Users;

-- Query 464
SELECT TRIM('  Smart Complaint  ') AS trimmed_text;

-- Query 465
SELECT CONCAT(Full_Name,' - ',City) AS user_details FROM Users;

-- Query 466
SELECT SUBSTRING(Complaint_Title,1,10) AS short_title FROM Complaints;

-- Query 467
SELECT REPLACE(Complaint_Title,'Road','Street') AS revised_title FROM Complaints;

-- Query 468
SELECT ROUND(AVG(Rating),2) AS average_rating FROM Feedback;

-- Query 469
SELECT ABS(-25) AS absolute_value;

-- Query 470
SELECT CEIL(AVG(Estimated_Days)) AS rounded_up_days FROM ResolutionTypes;

-- Query 471
SELECT FLOOR(AVG(Work_Hours)) AS rounded_down_hours FROM ComplaintUpdates;

-- Query 472
SELECT MOD(17,5) AS remainder_value;

-- Query 473
SELECT IF(Rating>=4,'Good','Needs Improvement') AS feedback_result, Rating FROM Feedback;

-- Query 474
SELECT Complaint_ID, NULLIF(ResolutionType_ID,0) AS resolution_type FROM Complaints;

-- Query 475
SELECT Complaint_ID, CASE WHEN Completed_Date IS NULL THEN 'Not completed' ELSE 'Completed' END AS completion_status FROM Assignments;


-- 16. DISTINCT, LIMIT, UNION, INDEXES, VIEWS AND TRANSACTIONS (25)

-- Query 476
SELECT DISTINCT City FROM Users;

-- Query 477
SELECT DISTINCT Access_Level FROM Roles;

-- Query 478
SELECT DISTINCT Status_Type FROM Statuses;

-- Query 479
SELECT DISTINCT Priority_Level FROM Priorities;

-- Query 480
SELECT DISTINCT Channel FROM Notifications;

-- Query 481
SELECT * FROM Complaints LIMIT 5;

-- Query 482
SELECT * FROM Users ORDER BY Full_Name LIMIT 10;

-- Query 483
SELECT * FROM Feedback ORDER BY Rating DESC LIMIT 3;

-- Query 484
SELECT * FROM Complaints ORDER BY Created_Date DESC LIMIT 5;

-- Query 485
SELECT * FROM Escalations ORDER BY Escalation_Level DESC LIMIT 5;

-- Query 486
SELECT City AS place FROM Users UNION SELECT City AS place FROM Locations;

-- Query 487
SELECT Full_Name AS person FROM Users UNION SELECT Designation AS person FROM Staff;

-- Query 488
SELECT Email AS contact FROM Users UNION SELECT Email AS contact FROM Departments;

-- Query 489
SELECT Complaint_ID AS record_id FROM Complaints UNION SELECT Complaint_ID AS record_id FROM Feedback;

-- Query 490
SELECT 'User' AS record_type, User_ID AS record_id FROM Users UNION SELECT 'Staff' AS record_type, Staff_ID AS record_id FROM Staff;

-- Query 491
CREATE INDEX idx_users_role ON Users(Role_ID);

-- Query 492
CREATE INDEX idx_subcategories_category ON SubCategories(Category_ID);

-- Query 493
CREATE INDEX idx_updates_complaint_date ON ComplaintUpdates(Complaint_ID,Update_Date);

-- Query 494
SHOW INDEX FROM Complaints;

-- Query 495
CREATE OR REPLACE VIEW High_Priority_Complaints AS SELECT Complaint_ID,Complaint_Title,Priority_ID,Status_ID FROM Complaints WHERE Priority_ID>=403;

-- Query 496
SELECT * FROM High_Priority_Complaints;

-- Query 497
DROP VIEW IF EXISTS High_Priority_Complaints;

-- Query 498
START TRANSACTION; UPDATE Users SET City='Kochi' WHERE User_ID=701; ROLLBACK;

-- Query 499
START TRANSACTION; UPDATE Feedback SET Rating=5 WHERE Feedback_ID=1602; COMMIT;

-- Query 500
SELECT COUNT(*) AS total_complaints, COUNT(DISTINCT User_ID) AS distinct_complainants FROM Complaints;
