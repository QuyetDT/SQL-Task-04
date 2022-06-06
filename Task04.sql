CREATE DATABASE Information
GO

USE Information
GO

CREATE TABLE Student (
	Name varchar (50) NOT NULL,
	Age int NOT NULL,
	Birth date
)
GO

INSERT INTO Student (Name, Age, Birth) VALUES ('Binh', 18, '5-5-1999')
INSERT INTO Student (Name, Age, Birth) VALUES ('Manh', 19, '7-15-2001')
INSERT INTO Student (Name, Age, Birth) VALUES ('Quoc', 20, '8-25-2000')
GO

UPDATE Student Set Name='Tuan' WHERE Name='Binh'
DELETE FROM Student WHERE Name= 'Manh'
GO

ALTER TABLE Student
ADD StudentID int identity PRIMARY KEY
GO

SELECT * FROM Student
GO

CREATE TABLE Classroom(
	ClassID int PRIMARY KEY,
	ClassName varchar (50)
)
GO

ALTER TABLE Classroom
ADD CONSTRAINT fk  FOREIGN KEY (ClassID) REFERENCES Student (StudentID)
GO

INSERT INTO Classroom (ClassID, ClassName) VALUES (1, 'T2203M')
INSERT INTO Classroom (ClassID, ClassName) VALUES (2, 'T2112A')
INSERT INTO Classroom (ClassID, ClassName) VALUES (3, 'T2007E')
GO

SELECT * FROM Classroom
GO
