/* List the employee id, first name, last name, the year of the hire date, and the number of years
the employee has worked up to January 1, 2008 from the EMPLOYEE table. Format the
name as last name followed by a comma and space followed by the first name.  */

SELECT emp_id AS EmpID
	, (lname + ', ' + fname) AS Name
	, FORMAT(hire_date, 'yyyy') AS HireDate
	, DATEDIFF(YEAR, hire_date, 'January 1, 2008') AS Years
FROM employee
ORDER BY Name