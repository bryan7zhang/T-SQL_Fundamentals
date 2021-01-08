/* Using a subquery, list the publisher ID and name from the PUBLISHERS table, for those
publishers who have published business books. */

SELECT pub_id AS PublisherID
	, pub_name AS Name
FROM publishers p
WHERE EXISTS (
	SELECT *
	FROM titles t
	WHERE t.pub_id = p.pub_id
	AND type = 'business'
)