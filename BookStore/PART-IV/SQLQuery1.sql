/*  List the first and last name of the employee having a last name beginning with Thomas. Use
local variables for the first and last name and the @@ROWCOUNT command. Display the
first and last name if the name is found, and the message 'Employee not found' if the last
name does not exist in the EMPLOYEE table. */

DECLARE @firstName VARCHAR(50)
DECLARE @lastName VARCHAR(50)
BEGIN
	SELECT @firstName = fname
		, @lastName = lname
	FROM employee
	WHERE lname LIKE 'Thomas%'
END
IF @@ROWCOUNT > 0 
	PRINT ('Employee Name is ' + @firstName + ' ' + @lastName)
ELSE
	PRINT 'Employee not found'

