/* Using the UNION command, calculate new prices for the books based on the year-to-date
sales for each book in the TITLES table. If the year-to-date sales are less than $2500, add
15% to the price; if the year-to-date sales are greater than or equal to $2500 and less than or
equal to $10000, add 10% to the price of the book; if the year-to-date sales are greater than
$10000, add 5% to the price. Display the title id, year-to-date sales, price, and the new
calculated price from the TITLES table. Order the result set by title id.  */

-- ytd <2500
SELECT title_id AS TitleID
	, ytd_sales AS YTDSales
	, price		AS Price
	, ROUND(price*1.15, 2, 0) AS NewPrice
FROM titles
WHERE ytd_sales < 2500
UNION
-- 2500 =< ytd_sales <= 10000
SELECT title_id AS TitleID
	, ytd_sales AS YTDSales
	, price		AS Price
	, ROUND(price*1.10, 2 , 0) AS NewPrice
FROM titles
WHERE ytd_sales BETWEEN 2500 AND 10000
UNION
-- ytd_sales > 10000
SELECT title_id AS TitleID
	, ytd_sales AS YTDSales
	, price		AS Price
	, ROUND((price*1.05), 2, 0) AS NewPrice
FROM titles
WHERE ytd_sales > 10000