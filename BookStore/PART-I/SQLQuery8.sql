/* List the employee id, first name, last name, job id, and hire date from the EMPLOYEE table
for employees with a last name beginning with the letter A or S, and a hire date greater than
or equal to January 1, 1990. Display the hire date in the format of MON DD YYYY. Order
the result set by the last name of the employee. */

SELECT emp_id AS EmpID
	, fname AS FirstName
	, lname AS LastName
	, job_id AS JobID
	, FORMAT(hire_date, 'MMM dd yyyy') AS HireDate
FROM employee
WHERE lname LIKE 'A%' OR lname LIKE 'S%'
	AND hire_date >= 'January 1, 1990'
ORDER BY lname