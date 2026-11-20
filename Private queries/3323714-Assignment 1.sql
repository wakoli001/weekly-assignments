/*
        COURSE DETAILS
UNIT   :Database Management Systems
COURSE :Computer Science
YEAR   :2.1


        PROJECT DESCRIPTION
QUESTION:
Choose an environment of your own ,and create  a database consisting of at least five tables,each with eight columns and at least 3 entities in each table
SOLUTION:
TOOLS :VS Code, MySQL shell, PopSQL
LANGUAGE : MySQL, SQL
ENVIRONMENT :Electoral Commision

        GROUP MEMBERS

1.NAME  :  WAKOLI IAN WANGILA -- CT101/G/26668/25

2.NAME  :  DERRICK MAINA    --   CT101/G/26639/25

3.NAME  :  SHARON MURUGI NDUATI     --   CT101/G/28467/25

4.NAME  :  KAMAU SAMUEL MAINA    --   CT101/G/26666/25

5.NAME  :  MORGAN MAINA NDUNG'U     --   CT101/G/28945

*/



CREATE TABLE Voters(
	VoterID INT PRIMARY KEY,
	NationalID INT,
	FirstName VARCHAR(40),
	LastName VARCHAR(40),
	DOB      DATE,
	Gender VARCHAR(10),
	County VARCHAR(40),
	Ward VARCHAR(30)
);
INSERT INTO Voters VALUES(01, 1234567, 'DAN', 'JUMA', CURRENT_DATE(), 'MALE', 'BUNGOMA', 'TOWNSHIP');
INSERT INTO Voters VALUES(02, 89101112, 'JOY', 'MILLER', CURRENT_DATE(), 'FEMALE', 'KITALE', 'SIDAI');
INSERT INTO Voters VALUES(03, 131415161, 'IAN', 'MAX', CURRENT_DATE(), 'MALE', 'NAKURU', 'KAGIO');
DESCRIBE TABLE Voters;
DROP TABLE Voters;
SELECT * FROM Voters;
SELECT   DISTINCT County  FROM Voters;

CREATE TABLE Polling_Station (
	StationID VARCHAR(10) ,
	StationName VARCHAR(40),
	StationCode VARCHAR(40),
	Location VARCHAR(40),
	StationOfficial VARCHAR(60),
	OpenTime TIME,
	CloseTime TIME,
	WardID VARCHAR(50),
	PRIMARY KEY (StationID)
);
DESCRIBE TABLE Polling_Station;
INSERT INTO Polling_Station VALUES ('A0A', 'KUTUS POLLING STATION', 'ST001A', 'KUTUS MUNICIPALITY', 'STEPHEN GERALD', '08:00:00', '05:00:00', 'KUT001');
INSERT INTO Polling_Station VALUES ('A1B', 'KAGIO POLLING STATION', 'ST002B', 'KAGIO TOWNSHIP', 'HARLEY ARTHUR', '08:00:00', '05:00:00', 'KAG002');
INSERT INTO Polling_Station VALUES ('A2C', 'KERUGOYA POLLING STATION', 'ST003C', 'KERUGOYA CONSTITUENCY', 'GRAHAM POTTER', '08:00:00', '05:00:00','KER003');
SELECT * FROM  Polling_Station;
DROP TABLE Polling_Station;

CREATE TABLE  PoliticalParty(
	PartyID VARCHAR(50),
	PartyName VARCHAR(30),
	PartyLogo VARCHAR(15),
	PartyLeader VARCHAR(60),
	Suppoters INT,
	Status VARCHAR(40),
	Reg_Date DATE,
	HeadQuarter VARCHAR(50),
	PRIMARY KEY (PartyID)
);
DESCRIBE TABLE PoliticalParty;
INSERT INTO PoliticalParty VALUES ('CCM27', 'CHAMA CHA MAPINDUZI','*___*', 'MAINA MWANGI', 25000, 'ACTIVE', CURRENT_DATE(), 'NAIROBI');
INSERT INTO PoliticalParty VALUES ('LMP22', 'LINDA MWANANCHI PARTY', '- -@- -', 'WAHIAKI ANGELLINE', 25000, 'ACTIVE', CURRENT_DATE(), 'NAKURU');
INSERT INTO PoliticalParty VALUES ('TFP25', 'TOGETHER FOREVER PARTY',  '__--__', 'AGNESS MWITI', 25000, 'ACTIVE', CURRENT_DATE(), 'NAIVASHA');
SELECT * FROM PoliticalParty;
DROP TABLE PoliticalParty;

CREATE TABLE Candidates(
	Candidate_Id INT PRIMARY KEY ,
	NationalID INT,
	FirstName  VARCHAR(40),
	LastName  VARCHAR(40),
	Gender  VARCHAR(40),
	PartyID  VARCHAR(40),
	Position  VARCHAR(40),
	WardID  VARCHAR(40)
);
DESCRIBE TABLE Candidates;
INSERT INTO Candidates VALUES (010, 7845120,'Didmus','Barasa','male',' -+-+-+-','member of parliament', 'KUT001');
INSERT INTO Candidates VALUES (020,8956230,'Brian','Khaemba', 'male', '== ++ ==','member of parliament', 'KUT001');
INSERT INTO Candidates VALUES (030,0258963,'Lewin','Gerald','male','__--__', 'member of parliament', 'KUT001');
SELECT * FROM Candidates;
DROP TABLE Candidates;

CREATE TABLE  Voter_Records(
	VoterID INT  PRIMARY KEY,
	NationalID INT NOT NULL,
	PartyID  VARCHAR(40),
	Gender  VARCHAR(40) DEFAULT 'undecided',
	VoteStatus  VARCHAR(40),
	StationID VARCHAR(10),
	Verification_Status  VARCHAR(40) DEFAULT 'Unregistered',
	WardID  VARCHAR(40)
);
DESCRIBE TABLE  Voter_Records;
INSERT INTO Voter_Records VALUES (1,0125487,'CCM27','Female', 'casted','ST001A','verified','KUT001');
INSERT INTO Voter_Records VALUES (2,01234567,'CCM27','Female', 'casted','ST001A','verified','KUT001');
INSERT INTO Voter_Records VALUES (3,89101112,'CCM27','Female', 'casted','ST001A','verified','KUT001');
SELECT * FROM  Voter_Records;
DROP TABLE Voter_Records;

CREATE TABLE Positions(
    positionName VARCHAR(30),
    PositionID INT PRIMARY KEY,
    PositionLevel VARCHAR(30),
    Aspirant VARCHAR(30),
    AgeRequirement INT,
    serveTerm INT,
    Applications INT,
    NominatedCandidates INT
);
DESCRIBE TABLE Positions;
INSERT INTO Positions VALUES ('Parliamentary', 123456, 'Lev22', 'Member Of Parliament', 28, 4, 122, 48);
INSERT INTO Positions VALUES ('Adminstatorship', 190236, 'Lev002', 'Member Of County Assembly', 20, 5, 122, 48);
INSERT INTO Positions VALUES ('Representatry', 569456, 'Lev209', 'Woman Representative', 25, 3, 133, 40);
SELECT * FROM Positions;
DROP TABLE Positions;

CREATE TABLE ElectionResults(
  ElectionID INT PRIMARY KEY,
  StationID INT,
  VotesCasted INT,
  RejectedVotes INT,
  ValidVotes INT,
  Timespan INT
);
DESCRIBE TABLE ElectionResults;
INSERT INTO ElectionResults VALUES (1200, 110, 23000,400,22600,2000);
INSERT INTO ElectionResults VALUES (1300, 120, 25600, 500, 25100,1900);
INSERT INTO ElectionResults VALUES (1400, 140, 32450, 150,32300,1700);
SELECT * FROM ElectionResults;
DROP TABLE ElectionResults;

CREATE TABLE Vote_Status(
     voteID  INT PRIMARY KEY,
     castNumber  INT,
     status  VARCHAR(30),
    scoreCard INT DEFAULT (FLOOR(RAND() * 100) + 1),
     station VARCHAR(40),
    CastDate DATE,
    TimeQuarter VARCHAR(20)
);
DESCRIBE TABLE Vote_Status;
INSERT INTO Vote_Status VALUES (1001, 238,'valid',25, 'KUT00A', CURRENT_DATE(), 'Morning');
INSERT INTO Vote_Status VALUES (1002,239,'valid',25, 'KUT00A', CURRENT_DATE(), 'Evening');
INSERT INTO Vote_Status VALUES (1003, 240, 'valid',25, 'KUT00A', CURRENT_DATE(), 'Morning');
SELECT * FROM Vote_Status;
DROP TABLE Vote_Status;

CREATE TABLE ElectionOfficials(
    officialID INT PRIMARY KEY,
    FirstName VARCHAR(20),
    lastName VARCHAR(20),
    NationalID INT,
    PhoneNumber INT,
    Email VARCHAR(30),
    Role VARCHAR(20),
    StationID INT
);
DESCRIBE TABLE ElectionOfficials;
INSERT INTO ElectionOfficials VALUES (1234, 'Kasmall', 'Tristan', 12341234, 0723565651,'tristan45@gmail.com', 'Supervisor', 231212);
INSERT INTO ElectionOfficials VALUES (5678, 'David', 'Batista', 56785678, 0125363625, 'davidbatista@gmail.com','Manager', 155248);
INSERT INTO ElectionOfficials VALUES (9101, 'Tony', 'Stark', 91019011,0141041025, 'tonystark26@gmail.com', 'IT Expert', 482987);
SELECT * FROM ElectionOfficials;
DROP TABLE ElectionOfficials;

CREATE TABLE Counties(
    countyID INT PRIMARY KEY,
    CntName VARCHAR(20),
    CntCode INT ,
    CntNumber INT,
    HeadQuarter VARCHAR(40),
    Constituencies INT,
    Wards INT,
    VotersRegistered INT
);
DESCRIBE TABLE Counties;
INSERT INTO Counties VALUES (310, 'Mjini',3102025, 15, 'Damax', 5, 6, 12900);
INSERT INTO Counties VALUES (320, 'Diaspora',3202025, 31, 'Victory Port', 3, 4, 23098);
INSERT INTO Counties VALUES (330, 'Kamiigua', 3302025, 44, 'StellenBosch', 5,7, 98075);
SELECT * FROM Counties;
DROP TABLE Counties;

CREATE TABLE Elections(
    EelectionID INT PRIMARY KEY,
    ElectionName VARCHAR(40),
    ElectionDate DATE,
    RegistrationStart DATE,
    RegistrationStop DATE,
    TimeQuarter VARCHAR(20),
    ElectionType VARCHAR(20),
    Status VARCHAR(10)
);
DESCRIBE TABLE Elections;
INSERT INTO Elections VALUES (101, 'Gurbernatorial', CURRENT_DATE(),'2026-1-19','2026-10-25', 'AfterNoon','Normal', 'Cast');
INSERT INTO Elections VALUES (102, 'Parliamentary',CURRENT_DATE(),'2026-1-19','2026-10-25', 'AfterNoon','Normal', 'Cast' );
INSERT INTO Elections VALUES (103, 'Presidential', CURRENT_DATE(),'2026-1-19','2026-10-25', 'AfterNoon','Normal', 'Cast');
SELECT * FROM Elections;
DROP TABLE  Elections;