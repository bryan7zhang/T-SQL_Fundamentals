/* Delete the title created */

DELETE FROM titles
WHERE title_id = 'ZZ1234';

BEGIN TRY
	SELECT *
	FROM titles
	WHERE title_id = 'ZZ1234'
END TRY
BEGIN CATCH
	PRINT('NO RECORD FOUND' + ERROR_MESSAGE())
END CATCH