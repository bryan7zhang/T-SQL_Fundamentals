/* Run the stored procedure author_information for author ID '672-71-3249' and the title ID
'TC7777'. Display the output values from the stored procedure for the first name, last name,
and royalty percentage. */

DECLARE @fName VARCHAR(50)
DECLARE @lName VARCHAR(50)
DECLARE @roy INT
EXEC sp_author_information '672-71-3249', 'TC7777',
	@lName OUTPUT, @fName OUTPUT, @roy OUTPUT

DECLARE @NewLineChar CHAR(2) = CHAR(13) + CHAR(10)
IF @lName IS NULL
	PRINT ('Author ID and Title ID do not match')
ELSE
	PRINT ('Author: ' + @fName + ' ' + @lName + @NewLineChar +
		'Royalty percentage = ' + CAST(@roy AS CHAR(3)))