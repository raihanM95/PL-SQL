CREATE TABLE Employees (
E_ID varchar(12) not null Primary key, 
E_Name varchar(25) not null,
E_Address varchar(55),
Salary int not null,
Department varchar(12)
)

INSERT INTO Employees 
(E_ID, E_Name, E_Address, Salary, Department) VALUES
('E011', 'Rakib', 'Cumilla', 64587, 'HR'),
('E012', 'Rakib', 'Dhaka', 24587, 'IT'),
('E013', 'Rakiba', 'Dhaka', 34587, 'IT'),
('E014', 'Rasel', 'Chittagong', 54587, 'Management'),
('E015', 'Robin', 'Chadpur', 24587, 'Sale'),
('E016', 'Rubi', 'Dhaka', 14587, 'Sale'),
('E017', 'Kabir', 'Chadpur', 28587, 'Management'),
('E018', 'Rothi', 'Dhaka', 28587, 'HR');


SELECT* FROM Employees

-- Show all details --
SP_HELP
SP_HELPTEXT

-- Depends --
SP_DEPENDS


-- Print 'Hello World' --
DECLARE @Test varchar(25)
SET @Test = 'Hello World'
PRINT @Test

DECLARE @F_Name varchar(10) = 'Raihan'
DECLARE @L_Name varchar(10) = 'Mahmud'
PRINT @F_Name + ' ' + @L_Name

DECLARE @num1 int = 10
DECLARE @num2 int = 5
DECLARE @sum int = @num1 + @num2
-- CAST convert data type --
PRINT 'Total: ' + CAST(@sum AS varchar(10))
