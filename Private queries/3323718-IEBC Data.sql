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

INSERT INTO Polling_Station VALUES ('A3D', 'SAGANA POLLING STATION', 'ST004D', 'SAGANA WARD', 'JOSEPH CARRAGHER', '08:00:00', '05:00:00', 'SAG004');

INSERT INTO Polling_Station VALUES ('A4E', 'MANYATTA POLLNG STATION', 'ST005E', 'MANYATTA CONSTITUENCY', 'JAMES SHAWN', '08:00:00', '05:00:00','MAN005');

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

INSERT INTO PoliticalParty VALUES ('JPP', 'JUBILEE PATRIOTIC PARTY', '== ++ ==', 'ALEXANDRIA MUNTHETHIA', 25000, 'ACTIVE', CURRENT_DATE(), 'KAKAMEGA');

INSERT INTO PoliticalParty VALUES ('PP26', 'PEOPLES PARTY', ' -+-+-+-', 'SYLVENUS VENUS', 25000, 'ACTIVE', CURRENT_DATE(), 'NAIROBI');

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

INSERT INTO Candidates VALUES ( 040,4758693,'Edmond', 'Waga','male','*___*','member of parliament', 'KUT001');

INSERT INTO Candidates VALUES ( 050,7896324,'Samuel','Mburu', 'male','- -@- -','member of parliament', 'KUT001');

SELECT * FROM Candidates;

DROP TABLE Candidates;

CREATE TABLE  Voter_Records(
	VoterID INT  PRIMARY KEY,
	NationalID INT NOT NULL,
	PartyID  VARCHAR(40),
	Gender  VARCHAR(40) DEFAULT 'undecided',
	VoteStatus  VARCHAR(40),
	StationID INT,
	Verification_Status  VARCHAR(40) DEFAULT 'Unregistered',
	WardID  VARCHAR(40)
);

DESCRIBE TABLE  Voter_Records;

INSERT INTO Voter_Records VALUES (1,0125487,'CCM27','Female', 'casted'ST001A','verified','KUT001');

INSERT INTO Voter_Records VALUES ();

INSERT INTO Voter_Records VALUES ();

INSERT INTO Voter_Records VALUES ();

INSERT INTO Voter_Records VALUES ();

SELECT * FROM  Voter_Records;

DROP TABLE Voter_Records;

SELECT 
    TABLE_NAME, 
    COLUMN_NAME, 
    DATA_TYPE, 
    COLUMN_TYPE, 
    IS_NULLABLE, 
    COLUMN_KEY, 
    EXTRA 
FROM 
    INFORMATION_SCHEMA.COLUMNS 
WHERE 
    TABLE_SCHEMA = 'wakoli'
ORDER BY 
    TABLE_NAME, 
    ORDINAL_POSITION;