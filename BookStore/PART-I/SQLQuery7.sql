/* List the information from the ROYSCHED table where the royalty is greater than or equal to
15 and less than or equal to 20. Order the result set by the title id.  */

SELECT *
FROM roysched
WHERE royalty BETWEEN 15 AND 20
ORDER BY title_id