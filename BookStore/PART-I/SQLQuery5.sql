/* Find the AVG year-to-date sales, MIN year-to-date sales, and MAX year-to-date sales from
the TITLES table. Rename the columns with an appropriate column heading. */

SELECT AVG(ytd_sales) AS AvgYTDSales
	, MIN(ytd_sales) AS MinYTDSales
	, MAX(ytd_sales) AS MaxYTDSales
FROM titles