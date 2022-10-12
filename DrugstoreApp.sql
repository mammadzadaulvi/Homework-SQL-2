CREATE DATABASE DrugstoreApp 

USE DrugstoreApp

CREATE TABLE Owners(
	Id int PRIMARY KEY IDENTITY(1,1),
	Name nvarchar(50) NOT NULL,
	Surname nvarchar(50) NOT NULL
)


CREATE TABLE Drugstores(
	Id int PRIMARY KEY IDENTITY(1,1),
	Name nvarchar(50) NOT NULL,
	Address nvarchar(100) NOT NULL,
	ContactNumber nvarchar(50) UNIQUE,
	CreationDate datetime,
	OwnerId int FOREIGN KEY REFERENCES Owners(Id)
)


CREATE TABLE Druggists(
	Id int PRIMARY KEY IDENTITY(1,1),
	Name nvarchar(50) NOT NULL,
	Surname nvarchar(50) NOT NULL,
	Age int NOT NULL,
	Experience decimal NOT NULL,
	DrugstoresId int FOREIGN KEY REFERENCES Drugstores(Id)
)

CREATE TABLE Drugs(
	Id int PRIMARY KEY IDENTITY(1,1),
	Name nvarchar(50) NOT NULL,
	Price double precision,
	Count int,
	DrugstoresId int FOREIGN KEY REFERENCES Drugstores(Id)
)



INSERT INTO Owners
VALUES('Abbas','Abbasov')

INSERT INTO Drugstores
VALUES('Aloe','Xalqlar','+9945555555','2001-01-01',1)

INSERT INTO Druggists
VALUES('Filankes','Filankesov', 30 ,10 ,1)

INSERT INTO Drugs
VALUES('Spazmalqon', 6.2 , 100, 1)

SELECT*FROM Owners
SELECT*FROM Drugstores
SELECT*FROM Druggists
SELECT*FROM Drugs