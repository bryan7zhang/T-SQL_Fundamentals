/* List the DISTINCT store IDs from the SALES table whose order date is September 14,
1994. */

SELECT DISTINCT stor_id
FROM sales
WHERE ord_date = 'September 14 1994';

IF @@ROWCOUNT = 4
	PRINT 'Correct query'
ELSE
	PRINT 'Wrong query'
