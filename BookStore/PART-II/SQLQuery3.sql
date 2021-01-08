/* List the publisher name and the total of books by each title type. Display the publisher name
from the PUBLISHERS table, the title type and MIN price from the TITLES table, and the
SUM of the quantity from the SALES table.  */

SELECT p.pub_name AS PublisherName
	, t.type AS Type
	, p.pub_name
	, MIN(t.price) AS MinPrice
	, SUM(s.qty)
FROM publishers p
INNER JOIN titles t ON t.pub_id = p.pub_id
INNER JOIN sales s ON s.title_id = t.title_id
GROUP BY t.type, p.pub_name