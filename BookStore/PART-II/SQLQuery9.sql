/* Using the UPDATE command, increase the price by 10% for the title created */

UPDATE titles
SET price = price * 1.10
WHERE title_id = 'ZZ1234';

SELECT title_id
	, price
FROM titles
WHERE title_id = 'ZZ1234';