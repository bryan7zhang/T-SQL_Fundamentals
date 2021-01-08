/* List the authors from the AUTHORS table with a city of Oakland, San Francisco, or
Berkeley, and a zip code of 94609, 94130, or 94705. Order the result set by name. */

SELECT *
FROM authors
WHERE city IN ('Oakland', 'San Francisco', 'Berkeley')
	AND zip IN (94609, 94130, 94705)