/*Create a view called vw_insert_stores to display the store ID, store name, and state from the
STORES table.*/

CREATE VIEW vw_insert_stores
	(StoreID, StoreName, State)
AS
SELECT stor_id
	, stor_name
	, state
FROM stores