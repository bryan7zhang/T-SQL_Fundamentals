/*Using the view vw_insert_stores, insert a row into the STORES table with a store ID of
9999, a store name of 'Peterson Books', and a state of 'UT'. Check your results.*/

INSERT INTO vw_insert_stores (StoreID, StoreName, State)
	VALUES(9999, 'Peterson Books', 'UT');

DECLARE @result_row_vw int;
DECLARE @result_row_tbl int;
SET @result_row_vw = (
	SELECT COUNT(*) 
	FROM vw_insert_stores
	WHERE StoreID = 9999
	);
SET @result_row_tbl = (
	SELECT COUNT(*)
	FROM stores
	WHERE stor_id = 9999
	);
IF @result_row_vw = 1
	PRINT('New store with ID 9999 created in "Stores" view');
IF @result_row_tbl = 1
	PRINT('New store with ID 9999 inserted into "Stores" table');
