/* For each store ID, list the SUM of the quantity from the SALES table and the MIN price from
the TITLES table. Generate a final total of the qty SUM and MIN price.  */

SELECT
	s.stor_id AS StoreID
	, SUM(s.qty) AS Qty
	, MIN(t.price)
FROM sales s
INNER JOIN titles t ON t.title_id = s.title_id
GROUP by s.stor_id WITH ROLLUP