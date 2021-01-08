/* List the name, phone number and states from the AUTHORS table. Format the name of the
author as the first name followed by a space followed by the last name. Format the phone
number as a left bracket followed by the area code followed by a right bracket followed by
the phone number. Order the result set by the newly formatted name.  */

SELECT (au_fname + ' ' + au_lname) AS Name
	, ('(' + SUBSTRING(phone, 1, 3) + ')' + 
	SUBSTRING(phone, 4, LEN(phone)-3))
	, state
FROM authors