/* Create a new table called 'business_books' containing the title ID, title, price, publisher ID,
and publish date columns, as well as the data, from the TITLES table for those rows which
are of type 'business'. */

SELECT t.title_id
	, t.title
	, t.price
	, t.pub_id
	, t.pubdate
INTO business_books
FROM titles t
WHERE type = 'business';