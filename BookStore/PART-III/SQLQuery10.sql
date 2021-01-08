/* Write the command to create a new composite index called empinx on the EMPLOYEE table
for the columns emp_id and hire_date. */

CREATE INDEX empinx
ON employee(emp_id, hire_date)