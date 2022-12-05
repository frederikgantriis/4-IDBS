-- Drop existing tables
DROP TABLE IF EXISTS R1;
DROP TABLE IF EXISTS R2;
DROP TABLE IF EXISTS R3;
DROP TABLE IF EXISTS R4;

-- Create schema
CREATE TABLE R1 (
    ID INTEGER PRIMARY KEY,
    MID INTEGER NOT NULL
);

CREATE TABLE R2 (
    PID INTEGER PRIMARY KEY,
    PN VARCHAR(50) NOT NULL
);

CREATE TABLE R3 (
    SID INTEGER PRIMARY KEY,
    SN VARCHAR(50) NOT NULL
);

CREATE TABLE R4 (
    MID INTEGER PRIMARY KEY,
    MN VARCHAR(50) NOT NULL
);

-- Insert existing data into new tables
INSERT INTO R1 (ID, MID)
SELECT DISTINCT ID, MID
FROM Projects;

INSERT INTO R2 (PID, PN)
SELECT DISTINCT PID, PN
FROM Projects;

INSERT INTO R3 (SID, SN)
SELECT DISTINCT SID, SN
FROM Projects;

INSERT INTO R4 (MID, MN)
SELECT DISTINCT MID, MN
FROM Projects;