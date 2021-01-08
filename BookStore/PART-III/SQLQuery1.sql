/* Using subqueries, write a query to display the first name, last name, address, city, and state 
from the AUTHORS table, for authors who live in the state of 'CA', and have at least one
book type of 'popular_comp' (found in the TITLES table via the TITLEAUTHOR table). 
Display the name of the author as last name, followed by a comma and a space, followed by 
the first name. Order the result set by the name of the author. */

SELECT (au_lname + ', ' + au_fname) AS Name
	, address	AS	Address
	, city AS City
	, state AS State
FROM authors
WHERE au_id IN 
	(
	SELECT au_id
	FROM titleauthor
	WHERE title_id IN
		(
		SELECT title_id
		FROM titles
		WHERE type = 'popular_comp'
		)
)
ORDER BY Name