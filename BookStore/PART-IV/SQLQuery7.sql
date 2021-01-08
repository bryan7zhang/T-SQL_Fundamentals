/* Create an INSERT trigger attached to the SALES table called tr_insert_ytd. The trigger
should add the quantity inserted into the SALES table to the ytd sales column in the TITLES
table (Hint: use UPDATE). Use the following code to test your trigger and query the TITLES
table before and after to ensure that the ytd sales has, in fact, been increased by 5 for title ID
'PS7777'. */

CREATE TRIGGER tr_insert_ytd ON sales
FOR INSERT
AS
DECLARE @qty INT
DECLARE @titleId CHAR(10)
SELECT @qty = qty
	, @titleId = title_id 
FROM inserted
UPDATE titles
SET ytd_sales = (ytd_sales + @qty)
WHERE titles.title_id = @titleId
GO


DECLARE @ytdBeforeUpdate INT
DECLARE @ytdAfterUpdate INT
SELECT @ytdBeforeUpdate = ytd_sales FROM titles WHERE title_id = 'PS7777'

-- insert a new sale record on 'PS777'
INSERT sales
VALUES ('7131', 'Q789', 'Mar 1 2007', 5, 'Net 30', 'PS7777' )

SELECT @ytdAfterUpdate = ytd_sales FROM titles WHERE title_id = 'PS7777'

IF @ytdAfterUpdate - @ytdBeforeUpdate = 5
	PRINT 'new trigger works'
ELSE 
	PRINT 'TITLES table is not updated'