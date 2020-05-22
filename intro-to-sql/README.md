# QUESTIONS??????
- Group By and Sort by
- Using them in sequence
- Go over Having and Where

# Thoughts on Databases, why do we need???

# Intro to SQL
1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Open the SQLite Browser and click 'File -> Open DataBase'
3. Choose the `chinook.db` file from this repo. This database is open source and maintained by Microsoft (SQL is no fun if you don't have any data).
4. Click the tab that says 'Execute SQL'. Type SQL queries in the box above. Press the play button. See the results of that query in the box below
5. Introduce CRUD

- what does data mean to you?
	- information
	- states, instances
- what can we do with data
	- destructer
		- reducing data
		- into managable pieces
	- manipualte
	- analyze
	- destroy

- how have we been keeping track of data
	- arrays and hashes
	- what variable are we keeping track of all our instances in:
		- @@all

- what's benefit of me keeping/creating a database
	- speed my code up
	- persistance
	- store way more data rather than a bit here and a bit there
	- look at our data outside of the Ruby program
	- save memory
	- organization
	- security

CRUD
- Create 
- Read
- Update
- Delete

- SQL -> Structured Query Language:

Create:
- INSERT INTO table .... COLUMNS ( Data)
- CREATE TABLE fans ( DB Structure -> schema.db)
Read: 
- SELECT * from fans 
- SELECT * from WHERE = "" ( data )
.schema (DB schema)
Update: 
- UPDATE fans SET name = "" WHERE id = "" ( data )
- ALTER TABLE ADD COLUMN, REMOVE COLUMN ( schema.db)
Delete:
- DELETE FROM fans where = ""
- DROP TABLE fans

##Question :

## Challenges
1. Write the SQL to return all of the rows in the tists table?
```sql
SELECT * FROM artists
READ
```

2. Write the SQL to select the artist with the name lack Sabbath"
```sql
SELECT * FROM artists WHERE 
READ
```

3. Write the SQL to create a table named 'fans' with an auto-incrementing ID that's a primary key and a name eld of type text
```sql
CREATE TABLE fans(id INTEGER PRIMARY KEY, name TEXT)
CREATE
```

4. Write the SQL to alter the fans table to have a artist_id column type integer?
```sql
 ALTER TABLE fans ADD COLUMN artist_id INTEGER 
 UPDATE
```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas? ArtistId **169**
```sql
INSERT INTO fans(name, artist_id) VALUES("Soundarya", 169)
CREATE
```

6. Write the SQL to return fans that are not fans of (artist_id : 169).
```sql
SELECT * FROM fans WHERE artist_id != 169
READ
```

7. remove fans from our DB
```sql
DELETE FROM fans -> changes data inside of our table
DROP TABLE fans -> changes out schema.
DELETE/DESTROY
```

8. Write the SQL to display an artists name next to their album title
```sql
SELECT artists.name AS artists_name, albums.title AS albums_title
FROM artists
INNER JOIN albums
ON albums.artist_id == artists.id
```

9. Write the SQL to display artist name, album title and number of tracks on that album
```sql
SELECT artists_name, albums_title, COUNT() AS total_tracks
FROM tracks 
INNER JOIN 
	(SELECT artists.name AS artists_name, 
				albums.title AS albums_title, 
				albums.id AS albums_id
	FROM artists
	INNER JOIN albums
	ON albums.artist_id = artists.id)
ON tracks.album_id = albums_id
GROUP BY albums_title
ORDER BY albums_title ASC
```

10. Write the SQL to return the name of all of the artists in the 'Pop' Genre
```sql
SELECT DISTINCT artists_name
FROM (SELECT DISTINCT artists_name, albums_id, tracks.genre_id AS genre_id 
		FROM tracks 
		INNER JOIN 
			(SELECT DISTINCT artists.name AS artists_name, albums.id AS albums_id 
			FROM artists
			INNER JOIN albums
			ON albums.artist_id == artists.id)
		ON albums_id = tracks.album_id)
INNER JOIN genres
ON genres.id = 9
```

## BONUS (very hard)

11. I want to return the names of the artists and their number of rock tracks
    who play Rock music
    and have more than 30 tracks
    in order of the number of rock tracks that they have
    from greatest to least
```sql
```

