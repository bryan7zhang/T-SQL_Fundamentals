/* Using the INSERT INTO command, insert a new title into the TITLES table with a title ID of
'ZZ1234', a title of 'Microsoft SQL Server', a book type of 'computer', a publisher ID of
'0877', a price of $89.99, and a publish date of 'September 29, 2008'. */

INSERT INTO titles(title_id, title, type, pub_id, price, pubdate)
VALUES('ZZ1234', 'Microsoft SQL Sever', 'computer', '0877', 89.99, 'September 29, 2008')