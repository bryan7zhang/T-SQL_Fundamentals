/*List the author ID, last name, city, state, and zip code from the AUTHORS table. The
StateName column is generated using the values in the state column (for TN, IN, UT, and CA
only). Check for zip codes that are less than 94300. Order the result set by the zip code. */

SELECT au_id AS AuthorID
	, au_lname AS LastName
	, city AS City
	, state AS State
	, CASE state
		WHEN 'TN' THEN 'Tennessee'
		WHEN 'IN' THEN 'Indiana'
		WHEN 'UT' THEN 'Utah'
		WHEN 'CA' THEN 'California'
		ELSE '-'
	END AS StateName
	, zip AS Zip
FROM authors
WHERE zip < 94300
ORDER BY zip