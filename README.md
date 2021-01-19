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