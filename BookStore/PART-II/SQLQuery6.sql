/* For each unique store ID, list the store ID, store name, and SUM of the cost calculated as
(quantity * price), but only for those stores with a cost between $500 and $1500. Obtain the
store ID and name from the STORES table, the quantity from the SALES table, and the price
from the TITLES table. Order the result set by store ID.  */

SELECT DISTINCT st.stor_id AS StoreID
	, st.stor_name AS StoreName
	, SUM(s.qty * t.price) AS Cost
FROM sales s
INNER JOIN stores st ON s.stor_id = st.stor_id
INNER JOIN titles t ON t.title_id = s.title_id
GROUP BY st.stor_id
		, st.stor_name
HAVING SUM(s.qty * t.price) BETWEEN 500 AND 1500
ORDER BY st.stor_id