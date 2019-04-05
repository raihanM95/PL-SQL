--PL SQL
--1. Procedure, 2. Function, 3. Trigger--

--1. Procedure
SELECT* FROM Student

CREATE PROCEDURE Test11
--Input variable--
@id varchar(25)
AS
BEGIN
	SELECT* FROM Student WHERE S_ID = @id
END

--Call--
Test11 '171-11-1261'

ALTER PROCEDURE Test11
--Input variable--
@id varchar(25),
--Output variable--
@name varchar(35) OUTPUT,
@address varchar(55) OUTPUT
AS
BEGIN
	SELECT @name = S_Name, @address = S_address FROM Student WHERE S_ID = @id
END

--Call--
DECLARE @a varchar(25), @b varchar(35)
EXECUTE Test11 '171-11-1261', @a OUTPUT, @b OUTPUT
SELECT @a AS Name, @b AS Address
PRINT 'He is ' + @a + ', ' + 'He is form ' + @b

--Example--
CREATE PROCEDURE Test12
--Input variable--
@address varchar(35),
--Output variable--
@total int output

AS
BEGIN
	SELECT @total = COUNT(S_ID) FROM Student WHERE S_address = @address
END

--Call--
DECLARE @a int
EXECUTE Test12 'Dhaka', @a OUTPUT
SELECT @a AS Total_S