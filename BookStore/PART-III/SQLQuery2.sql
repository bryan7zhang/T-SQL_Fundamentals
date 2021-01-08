/* Using inner joins, write a query to display the first name, last name, address, city, and state 
from the AUTHORS table, for authors who live in the state of 'CA', and have at least one
book type of 'popular_comp' (found in the TITLES table via the TITLEAUTHOR table). 
Display the name of the author as last name, followed by a comma and a space, followed by 
the first name. Order the result set by the name of the author. */

SELECT (a.au_lname + ', ' + a.au_fname) AS Name
	, a.address	AS	Address
	, a.city AS City
	, a.state AS State
FROM authors a
INNER JOIN titleauthor ta ON ta.au_id = a.au_id
INNER JOIN titles t ON t.title_id = ta.title_id
WHERE t.type = 'popular_comp'