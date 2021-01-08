/*Run the view vw_sales_title_info displaying the store ID, store name, title, and price where
the price is equal to $19.99. Order the result set by the store ID. */

SELECT StoreID
	, StoreName
	, Title
	, Price
FROM vw_sales_title_info
WHERE Price = 19.99
ORDER BY StoreID