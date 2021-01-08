/* List the title from the TITLES table, the order number and order date from the SALES table,
and the store name from the STORES table. Display only the first 30 characters of the title.
Display the order date in the format of MMM DD YYYY. There should be a row produced
in the result set for each row in the titles table. Order the result set by the order number.  */

SELECT
	SUBSTRING(t.title, 1, 30) AS Title
	, s.ord_num AS OrdNumber
	, FORMAT(s.ord_date, 'MMM dd yyyy') AS OrderDate
	, st.stor_name AS StoreName
FROM titles t
LEFT OUTER JOIN sales s ON t.title_id = s.title_id
LEFT OUTER JOIN stores st ON s.stor_id = st.stor_id
ORDER BY OrdNumber
