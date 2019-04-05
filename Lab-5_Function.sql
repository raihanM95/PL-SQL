--2. Function
--i) Scalar value
CREATE Function S_Name_return(@sid varchar(35))
--return_type--
returns varchar(35)
AS
BEGIN
	--declare return variable--
	DECLARE @i varchar(35)
	SELECT @i = S_Name FROM Student WHERE S_ID = @sid
	--return @i--
	return @i
END
SELECT* FROM Student
SELECT DBO.S_Name_return('171-11-1261') AS S_Name





--ii) Table value
CREATE Function S_Dpt_All(@did int)
returns TABLE
AS
return(
SELECT S_ID, S_Name, S_address, Department.D_id, D_Name, Location
FROM Department INNER JOIN Student
ON Department.D_id = Student.D_ID WHERE Department.D_id = @did)
--join with funcation--
SELECT S_ID, S_Name, C_Code, C_Name FROM S_Dpt_All(35)
INNER JOIN Course
ON S_Dpt_All.D_id = Course.D_ID