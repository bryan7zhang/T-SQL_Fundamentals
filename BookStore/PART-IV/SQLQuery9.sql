/* Change the pr_author_states stored procedure by using the ALTER command to add the
state and zip code from the AUTHORS table. */

ALTER PROCEDURE pr_author_states (
	@state CHAR(2) = NULL
)
AS
IF @state IS NULL
	BEGIN
		PRINT ('Please enter a valid state')
	END
ELSE
	BEGIN
		SELECT au_id AS AuthorId
			, (au_fname + ' ' + au_lname) AS Name
			, address AS Adress
			, city AS City
			, state AS State
			, zip AS Zip
		FROM authors
		WHERE state = @state
	END
GO

EXEC pr_author_states 'KS'