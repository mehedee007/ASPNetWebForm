CREATE TABLE Courses
(
CourseID INT PRIMARY KEY IDENTITY (101,1),
CourseName NVARCHAR (30) NOT NULL,
Duration NVARCHAR (30),
Cost DECIMAL (10,2),
StartDate DATE DEFAULT SYSDATETIME()
)
GO

CREATE TABLE Trainee(
	TraineeID int Primary Key IDENTITY(1,1) NOT NULL,
	TraineeName varchar(30) NULL,
	Gender varchar(20) NULL,
	EmailAddress varchar(30) NULL,
	ContactAddress varchar(50) NULL
)
GO

INSERT INTO Trainee VALUES ('Arosh Poddar', 'Male', 'poddar@uttarbongo.com', 'Chittagong')
INSERT INTO Trainee VALUES ('Tommy Shelby', 'Male', 'shelby@industry.com', 'Britain')
INSERT INTO Trainee VALUES ('Jashim Uddin', 'Male', 'jashim@digital.com', 'Jamalpur')
INSERT INTO Trainee VALUES ('Aroshi Begum', 'Female', 'aroshi@arosh.com', 'UttarBongo')
GO

SELECT * FROM Trainee
GO
DROP TABLE StudentRegistraion
CREATE TABLE StudentRegistration
(
RegistraionNo INT PRIMARY KEY IDENTITY (150,1),
StudentName NVARCHAR (100) NOT NULL,
Gender NVARCHAR (10),
University NVARCHAR (100) NOT NULL,
StudentEmail NVARCHAR (100),
GraduationDate DATE DEFAULT SYSDATETIME(),
StudentImagePath VARCHAR (MAX)
)
GO

ALTER TABLE StudentRegistraion
ALTER COLUMN GraduationDate DATE
GO

ALTER TABLE StudentRegistration
ADD DepartmentID INT FOREIGN KEY REFERENCES Departments (DepartmentID)
GO

CREATE TABLE UserRegistraion
(
UserID INT PRIMARY KEY IDENTITY,
UserName VARCHAR (100) NOT NULL,
UserPassword VARCHAR (MAX) NOT NULL,
--RegistrationNo INT FOREIGN KEY REFERENCES StudentRegistration (RegistraionNo)
)
GO
DROP PROC sp_StudentInsertUserInsert
GO
CREATE PROC sp_StudentInsertUserInsert
@studentName NVARCHAR (100),
@gender NVARCHAR (10),
@university NVARCHAR (100),
@studentEmail NVARCHAR (100),
@graduationDate DATE,
@studentImagePath VARCHAR (MAX),
@userName VARCHAR (100),
@UserPassword VARCHAR (MAX),
@departmentID INT
AS
BEGIN
	INSERT INTO StudentRegistration (StudentName, Gender , University, StudentEmail, GraduationDate, StudentImagePath,DepartmentID ) VALUES(@studentName,@gender,@university,@studentEmail,@graduationDate,@studentImagePath,@departmentID)
	INSERT INTO UserRegistraion VALUES (@userName, @UserPassword)
END

EXEC sp_StudentInsertUserInsert studentName,gender,university,email,graduation,image,userName,UserPassword, @departmentID

CREATE TABLE Departments
(
DepartmentID INT PRIMARY KEY IDENTITY (101,1),
Department NVARCHAR (50),
Faculty NVARCHAR (50)
)
GO

INSERT INTO Departments VALUES  ('Sociology','BSS'),
								('Physics', 'BSC'),
								('Accounting', 'BBA'),
								('Forestry', 'Forestry')
								GO

SELECT * FROM Departments
GO








DROP TABLE TreeRegister
CREATE TABLE TreeRegister
(
SerialNo INT PRIMARY KEY IDENTITY,
TreeName NVARCHAR (100) NOT NULL,
TreeType NVARCHAR (100) NOT NULL,
Accessories NVARCHAR (50),
TreeRegister DATE DEFAULT SYSDATETIME(),
Refundable NVARCHAR (10)
)
GO

INSERT INTO TreeRegister VALUES ('Mango', 'Fruit','Tob, Water Machine', '07/25/1994', 'Yes')
GO

SELECT * FROM TreeRegister