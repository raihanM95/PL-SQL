--3. Trigger
-->Database Trigger
--i)Create
CREATE TRIGGER Tr_for_table
ON Database
FOR CREATE_TABLE
AS

BEGIN
PRINT'Hi!'
END

--if execute a query then show sms--
CREATE TABLE test1000(
	Id int
)

CREATE TABLE testTrg(
	Id int
)

--ii)Drop
CREATE TRIGGER Tr_for_tableS
ON Database
FOR DROP_TABLE
AS

BEGIN
PRINT'Hi table drop!'
END

--if execute a query then show sms--
DROP TABLE test1000

DROP TABLE testTrg





-->Table Trigger
--i)Insert
CREATE TABLE BackUp_for_Student(
	Id int identity(1, 1) primary key,
	Value nvarchar(3500)
)

CREATE TRIGGER Tr_for_insert_STD
ON Student
FOR Insert
AS

BEGIN
DECLARE @i varchar(35)
SELECT @i = S_ID FROM Inserted
INSERT INTO BackUp_for_Student VALUES(
'New insert data is' + @i + 'He is insert at' + CAST(GETDATE() AS varchar(35))
)
END
SELECT* FROM Student
INSERT INTO Student VALUES ('172-35-152', 'Raihan', 'Sylhet', 35)

SELECT* FROM BackUp_for_Student





--ii)Delete
CREATE TRIGGER Tr_for_delete_STD
ON Student
FOR Delete
AS

BEGIN
DECLARE @i varchar(35)
SELECT @i = S_ID FROM Deleted
INSERT INTO BackUp_for_Student VALUES(
'Delete data is' + @i + 'He is delete at' + CAST(GETDATE() AS varchar(35))
)
END

SELECT* FROM Student
DELETE FROM Student WHERE S_ID = '169-35-1542'

SELECT* FROM BackUp_for_Student