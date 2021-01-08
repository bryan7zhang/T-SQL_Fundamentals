/* List the title id, title, advance, year to date sales, and publishing date from the TITLES table
where the advance is greater than or equal to $3000, and the publishing date is equal to June
9, 1991 or June 12, 1991. Display only the first 30 characters of the title. Display the
publisher date in the format of DD-MM-YYYY. Order the result set by the title.  */

SELECT title_id
	, SUBSTRING(title, 1, 30) AS Title
	, advance
	, ytd_sales
	, FORMAT(pubdate, 'dd-MM-yyyy')
FROM titles
WHERE advance >=3000
	AND pubdate BETWEEN 'June 9 1991' AND 'June 12 1991'
ORDER BY Title