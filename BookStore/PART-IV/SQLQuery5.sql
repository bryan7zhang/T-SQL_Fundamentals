/* Create a stored procedure called store_information which takes an input variable for the
price of a book. The stored procedure should list the store ID and order date from the SALES
table, the store name from the STORES table, and the title id, price, and advance from the
TITLES table, where the price is greater than or equal to the input variable. Display the order
date in the format of YYYY.MM.DD. Order the result set by the store ID. */

CREATE PROCEDURE sp_store_information (
	@minPrice MONEY
)
AS
SELECT s.stor_id AS StoreId
	, CONVERT(CHAR(10),s.ord_date, 102) AS OrderDate
	, st.stor_name AS StoreName
	, t.title_id AS TitleId
	, t.price AS Price
	, t.advance AS Advance
FROM sales s
INNER JOIN stores st ON s.stor_id = st.stor_id
INNER JOIN titles t ON s.title_id = t.title_id
WHERE t.price >= @minPrice
ORDER BY s.stor_id
GO