/* Create a stored procedure called pr_author_states which displays the first name, last name,
address, and city from the AUTHORS table. The name should be in the format of first name
followed by a space followed by the last name. The stored procedure will have one input
parameter to indicate the state to be selected. If the state is not entered, display a message
indicating that a value is required.  */

CREATE PROCEDURE pr_author_states (
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
		FROM authors
		WHERE state = @state
	END
GO

EXEC pr_author_states 'KS'