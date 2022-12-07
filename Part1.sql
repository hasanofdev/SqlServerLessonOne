--DDL
--CREATE - Yaradmaq
--DROP - Silmek
--ALTER - Deyismek
--TRUNCATE - Table Formatdamaq

--DML
--SELECT
--INSERT
--UPTADE
--DELETE

--DCL
--GRAND
--REVOKE
--DENY

Use Northwind

--CREATE DATABASE Academy

--USE Academy

--CREATE TABLE Students(
--	ID int PRIMARY KEY IDENTITY(1,1),
--	FirstName nvarchar(20) NOT NULL,
--	LastName nvarchar(20) NOT NULL,
--	[GROUP] nvarchar(15) NULL,
--	Email nvarchar(20) NOT NULL,
--	Gender bit NOT NULL,
--	DateOfBirth date NOT NULL
--)

--ALTER TABLE Students
--ADD Score tinyint NULL

--ALTER TABLE Students
--DROP COLUMN Score

--ALTER TABLE Students
--ALTER COLUMN Score float NULL

--ALTER TABLE Students
--DROP CONSTRAINT PK__Students__3214EC27693CFF5E

--ALTER TABLE Students
--ADD CONSTRAINT PK_Students_Id PRIMARY KEY (ID)

--sp_rename 'Students.NewScore','Score'

--TRUNCATE TABLE Students

SELECT * FROM Products

SELECT ProductName, UnitPrice FROM Products

SELECT FirstName, LastName FROM Employees

SELECT FirstName +' ' + LastName  AS FullName FROM Employees

SELECT FirstName + ' ' + LastName + ' ' + CONVERT(nvarchar(50),YEAR(GETDATE()) - YEAR(BirthDate))  AS [Name Surname Age] FROM Employees

SELECT TOP 10 PERCENT UnitPrice From Products
ORDER BY UnitPrice DESC

SELECT DISTINCT CategoryName FROM Categories 

--WHERE OPERATORS
-- >   Boyukdur
-- <   Kicikdir
-- <=  Boyuk-Beraber
-- >=  Kicik-Beraber
-- =   Beraberdi
-- !>  Boyuk Deyil
-- !<  Kicik Deyil
-- !=  Beraber Deyil
-- <>  Beraber Deyil

SELECT * FROM Categories
WHERE CategoryID = 5

SELECT * FROM Categories
WHERE CategoryID > 5

SELECT * FROM Categories
WHERE CategoryName != 'Produce'

SELECT * FROM Categories
WHERE CategoryName <> 'Produce'

SELECT * FROM Categories
WHERE LEN(CategoryName) !< 10

SELECT * FROM Northwind.dbo.Categories
WHERE LEN(CategoryName) !< 10

SELECT * FROM Employees
WHERE YEAR(BirthDate) > 1955

SELECT * FROM Employees
WHERE MONTH(BirthDate) > 8

SELECT * FROM Employees
WHERE DAY(BirthDate) = 8

SELECT * FROM Employees
WHERE BirthDate = '1948-12-08'

SELECT * FROM Employees
WHERE FirstName ='Janet' OR City ='London'


SELECT * FROM Employees
WHERE FirstName ='Janet' AND City ='Kirkland'

SELECT * FROM Employees
WHERE EmployeeID > 4 AND EmployeeID < 7

SELECT * FROM Employees
WHERE Region IS NULL

SELECT * FROM Employees
WHERE Region IS NOT NULL

SELECT * FROM Employees
ORDER BY TitleOfCourtesy ASC, City DESC

--IN,BETWEEN,LIKE
-- IS NULL,IS NOT NULL,
	
SELECT * FROM Categories
WHERE CategoryName IN('Beverages','Confections','Seafood')

SELECT * FROM Categories
WHERE CategoryID BETWEEN 3 AND 6

SELECT CategoryName FROM Categories
WHERE CategoryName NOT LIKE '%e%'

Use Academy

INSERT INTO Students VALUES
('Miri','Huseynzade','FBMS_42114','miri@gmail.com',1,NULL,5.8),
('Leyla','Shefiyeva','FBMS_4214','leyla@gmail.com',1,NULL,12)


UPDATE Students
SET [Group] = 'FBMS_4213'
WHERE ID = 1

SELECT * FROM Students

DELETE Students
WHERE ID = 1

TRUNCATE TABLE Students