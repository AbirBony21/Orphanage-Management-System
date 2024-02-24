CREATE DATABASE FarhanTest

USE FarhanTest

CREATE TABLE orphan
(
	orphanID INT IDENTITY(10000,1) PRIMARY KEY,
	firstname VARCHAR(50) NOT NULL,
	lastname VARCHAR(50)NOT NULL,
	age INT NOT NULL,
	dateofbirth DATE NOT NULL,
	gender VARCHAR(50) NOT NULL,
	bloodgroup VARCHAR(50) NULL,
	adoptionstatus VARCHAR(50) NOT NULL DEFAULT 'Not Adopted',
	roomID INT FOREIGN KEY REFERENCES room(roomID) NULL
)

CREATE TABLE room
(
    roomID INT PRIMARY KEY NOT NULL,
    floorno INT NOT NULL,
    buildingno INT NOT NULL,
    block VARCHAR NOT NULL
)

CREATE TABLE adopter
(
	adopterID INT IDENTITY(50000, 1) PRIMARY KEY,
	adoptername VARCHAR(50) NOT NULL,
	locality VARCHAR(50) NOT NULL,
	phoneno VARCHAR(50) NOT NULL,
	email VARCHAR(50),
	adoptiondate DATE NULL,
	orphanID INT FOREIGN KEY REFERENCES orphan(orphanID) NULL
)

CREATE TABLE visitor
(
	visitorID INT IDENTITY(100, 1) PRIMARY KEY,
	visitorname VARCHAR(50) NOT NULL,
	locality VARCHAR(50) NOT NULL,
	phoneno VARCHAR(50) NOT NULL,
	email VARCHAR(50),
	orphanID INT FOREIGN KEY REFERENCES orphan(orphanID) NULL,
	visitingpurpose VARCHAR(max) 
)

CREATE TABLE orphanage
(
	branchID INT IDENTITY(1,1) PRIMARY KEY,
	branchname VARCHAR(50) NOT NULL,
	locality VARCHAR(50)NOT NULL,
	capacity VARCHAR(50) NOT NULL,
	orphanID INT FOREIGN KEY REFERENCES orphan(orphanID) NOT NULL,
	visitorID INT FOREIGN KEY REFERENCES visitor(visitorID) NOT NULL,
	adopterID INT FOREIGN KEY REFERENCES adopter(adopterID) NOT NULL,
	donorID INT FOREIGN KEY REFERENCES donor(donorID) NOT NULL
)

CREATE TABLE ex
(
    sectorID INT IDENTITY(1,1) PRIMARY KEY,
    months VARCHAR(50),
    food INT,
    clothes INT,
    education INT,
    rent INT, 
    miscellaneous INT,

)