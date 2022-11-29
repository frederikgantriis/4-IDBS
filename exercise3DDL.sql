DROP TABLE IF EXISTS Projects;
DROP TABLE IF EXISTS MN;
DROP TABLE IF EXISTS SID;
DROP TABLE IF EXISTS PID;

CREATE TABLE Projects (
    ID INT NOT NULL PRIMARY KEY,
    MN VARCHAR(50) NOT NULL,
);

CREATE TABLE R2 (
    FOREIGN KEY (MN) REFERNCES Projects(MN),
    MN VARCHAR(50) NOT NULL,
    MID INT NOT NULL,
);

CREATE TABLE R3 (
    SID INT NOT NULL PRIMARY KEY, 
    SN VARCHAR(50) NOT NULL,
);

CREATE TABLE R4 (
    PID INT NOT NULL PRIMARY KEY, 
    PN VARCHAR(50) NOT NULL, 
);

INSERT INTO Projects (ID, MN) 
Select DISTINCT ID, MN
From Projects;

INSERT INTO R2 (MN, MID)
Select DISTINCT MN, MID
From Projects;

INSERT INTO R3 (SID, SN)
Select DISTINCT SID, SN
From Projects;


INSERT INTO R4 (PID, PN)
Select DISTINCT PID, PN
From Projects;
