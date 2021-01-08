/* List the title ID, title, type, and price from the TITLES table where the notes column does not
contain NULL values. Order the result set by title ID.  */
SELECT title_id
	, title
	, type
	, price
FROM titles
WHERE notes IS NOT NULL;

IF @@ROWCOUNT =17 
	PRINT 'correct query'
ELSE
	PRINT 'wrong answer'