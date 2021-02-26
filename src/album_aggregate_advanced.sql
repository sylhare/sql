-- Aggregation

SELECT a.title AS Album, COUNT(t.track_number) as Tracks
  FROM track AS t
  JOIN album AS a
    ON a.id = t.album_id
  GROUP BY a.id
  ORDER BY Tracks DESC, Album
;

SELECT a.title AS Album, COUNT(t.track_number) as Tracks
  FROM track AS t
  JOIN album AS a
    ON a.id = t.album_id
  GROUP BY a.id
  HAVING Tracks >= 10
  ORDER BY Tracks DESC, Album
;

SELECT a.title AS Album, COUNT(t.track_number) as Tracks
  FROM track AS t
  JOIN album AS a
    ON a.id = t.album_id
  WHERE a.artist = 'The Beatles'
  GROUP BY a.id
  HAVING Tracks >= 10
  ORDER BY Tracks DESC, Album
;

-- Defined functions

SELECT SEC_TO_TIME(320);
SELECT TIME_TO_SEC('5:20');
SELECT title, duration, SEC_TO_TIME(duration) FROM track;

SELECT a.title, SUM(duration), SUM_SEC_TO_TIME(t.duration) FROM track AS t
  JOIN album AS a ON t.album_id = a.id
  GROUP BY a.id