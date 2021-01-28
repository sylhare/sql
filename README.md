# SQL (Structured Query Language)

[SQL](https://en.wikipedia.org/wiki/SQL) is a domain specific language used to manage data held in relational database management system (RDBMS).
It is particularly good for structured data.

Not to confuse with "noSQL Database" which refers to non-relational database. However some [noSQL](https://en.wikipedia.org/wiki/NoSQL) database can use SQL like queries or be used in coordination with SQL managed databases (ie: the SQL databases for short).

## Setup

You can use [sql lite studio](https://sqlitestudio.pl/) to experiment with SQL. You can install with brew using:

```bash
brew install --cask sqlitestudio
```

Once open, you can add a database or create one, then use the pencil and paper icon 📝 to open the SQL Editor.

## Common errors

### Change SQLite database mode to read-write

If you have ever encountered:

```bash
Error while executing SQL query on database 'test': attempt to write a readonly database
```

Then there are a couple of things you can [check](https://stackoverflow.com/questions/1518729/change-sqlite-database-mode-to-read-write):

 - Is there multiple process accessing the db? 
 	- You can restart sqlstudio on Mac for example if it suddenly stopped working
 - Are the db and the folder with write access for the user?
 	- You can use `chmod 755 *.db` to add write access to them and again for the folder

### Error codes

You will encounter them from time to time when writing erroneous queries.
An example of mySQL error, usually pretty verbose:

- ERROR 1064 (42000) at line 4: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near.

However make sure you are running on a mySQL server. Here is an Oracle server error (With the `ORA-`)

- ORA-00911: invalid character
	- If you want to use modulo, use `MOD(x, y)` instead of `x % y`

Any way if you see these kind of errors make sure you didn't type a werid character (like $, \ depending on the db).

## SQL Limbo

### JOIN

#### Introduction

A JOIN operation serves to select correlated information from two tables.
A JOIN query goes in a simplified way like that:

```SQL
SELECT * FROM leftTable JOIN rightTable ON condition;
```

Where left and right are TABLES.

#### Types of JOIN

Because it has multiple flavours, but the two first one are the main ones:

- INNER JOIN: which is the default include from both tables when the condition is met
- LEFT (OUTER) JOIN: Includes the rows where the conditions are met plus all the row of the left table where the conditions are not met. 
- RIGHT (OUTER) JOIN: Not always supported. Same thing as the LEFT OUTER JOIN but includes the rows not met from the right table.
- FULL (OUTER) JOIN:  Not always supported. Takes here the condition is met for plus all remaining rows not met from left and right.

> By default when the condition is not match on the other table, its corresponding value will be `NULL`