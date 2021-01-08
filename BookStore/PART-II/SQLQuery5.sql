/* List the AVG and SUM of the price by type for rows with a price that is NOT NULL from
the TITLES table. At the end of the report, show the AVG and SUM of the price for all types. */

SELECT type AS Type
	, AVG(price)
	, SUM(price)
FROM titles
WHERE price IS NOT NULL
GROUP BY type WITH ROLLUP