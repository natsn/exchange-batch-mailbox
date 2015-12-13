This script takes input from `ebc.csv` and creates customized exchange mailboxes as well as adding the new users to prespecified groups.


Use the `.xlsx` file to enter all the account credentials. (Don't delete the headers) Save as "ebc.csv" in the same folder, overwrite the last one.

Alternatively, just edit the `.csv` file, again keeping the headers. (preserve formatting)

On exchange-server, run the `.ps1` script 

Defaults to:
`NormalMailboxes server`
`domain.com/Eugene/Users  OU`

Joins member into:
`Group1`, `Group2`

Let me know if you want/need anything changed or possible improvements :)
