-- IF ELSE --
SELECT* FROM Employees

DECLARE @A VARCHAR(35)
SELECT @A = Department
FROM EMPLOYEES WHERE E_ID = 'E011'

if @A = 'IT'
	PRINT 'He is from same department'
else
	PRINT 'He is from different department'

if(SELECT MAX(Salary) FROM Employees) < 60000
BEGIN
	PRINT 'Salary is not enough'
END

else
BEGIN
	if(SELECT MAX(Salary) FROM Employees) < 9000
	BEGIN
		UPDATE Employees SET Salary = Salary + Salary *.5
	END

	else
	BEGIN
		PRINT'Salary is more than enough'
	END
END

--Find employee salary--
--If average selery > 60 update salary 15% decryment--
--Loop MAX salary < 60--

DECLARE @i int = (SELECT AVG(Salary) FROM Employees)
WHILE @i > 40000
	UPDATE Employees SET Salary = Salary - Salary *.5
	if(SELECT MAX(Salary) FROM Employees) < 60000
	BREAK