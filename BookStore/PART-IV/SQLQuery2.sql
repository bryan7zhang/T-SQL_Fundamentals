/* List employees with a hire date between January 1 1989 and December 31 1990. Display
the employee ID, first name, last name, hire date, and job ID from the EMPLOYEE table, and
the job description from the JOB table. Use local variables for the two dates. Display the
name of the employee as the last name, followed by a comma and a space, followed by the
first name. Display the hire date in the format of MMM DD YYYY. Order the result set by
the employee name. */

DECLARE @hire_date1 datetime
DECLARE @hire_date2 datetime
SET @hire_date1 = 'Jan 1 1989'
SET @hire_date2 = 'Dec 31 1990'

SELECT e.emp_id AS EmployeeID
	, (e.lname + ', ' + e.fname) AS Name
	, CONVERT(char(12), e.hire_date, 109) AS HireDate
	, e.job_id AS JobID
	, j.job_desc AS Description
FROM employee e
INNER JOIN jobs j ON e.job_id = j.job_id
WHERE e.hire_date BETWEEN @hire_date1 AND @hire_date2
ORDER BY Name