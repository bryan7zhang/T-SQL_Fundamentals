/* List the store id, order number, order date, and a new order date calculated by adding 10 days
to the original order date from the SALES table where the quantity is less than or equal to 15.
Display the order date and new order date in the format of YYYY.MM.DD. */

SELECT stor_id AS StoreID
	, ord_num AS OrderNumber
	, FORMAT(ord_date, 'yyyy.MM.dd') AS OrderDate
	, FORMAT(DATEADD(DAY, 10, ord_date), 'yyyy.MM.dd') AS NewOrderDate
FROM sales
WHERE qty <= 15