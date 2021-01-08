/* Create a stored procedure called author_information which takes 2 input parameters
consisting of an author ID and a title ID, and returns 3 output parameters consisting of the
last name, first name, and royalty percentage. If the author ID and title ID matches the input
parameters, the stored procedure should return the last and first names from the AUTHORS
table, and the royalty percentage from the TITLEAUTHOR table. */

ALTER PROCEDURE sp_author_information (
	@authorId VARCHAR(20),
	@titleId VARCHAR(20),
	@lastName VARCHAR(40) OUTPUT,
	@firstName VARCHAR(40) OUTPUT,
	@royalty INT OUTPUT
)
AS
SELECT @lastName = a.au_lname
	, @firstName = a.au_fname
	, @royalty = ta.royaltyper
FROM authors a
INNER JOIN titleauthor ta ON a.au_id = ta.au_id
WHERE a.au_id = @authorId
	AND ta.title_id = @titleId
GO	