/*Create a view called vw_sales_title_info to display the store ID, order date, and quantity
from the SALES table, the store name from the STORES table, and the title, price, advance,
and publish date from the TITLES table.*/

CREATE VIEW vw_sales_title_info
	(StoreID, OrderDate, Quantity, StoreName, Title, Price, Advance)
AS
SELECT s.stor_id
	, s.ord_date
	, s.qty
	, st.stor_name
	, t.title
	, t.price
	, t.advance
FROM stores st
INNER JOIN sales s ON s.stor_id = st.stor_id
INNER JOIN titles t ON t.title_id = s.title_id

