/*
In the database, 372 songs have a duration of at most 1 minute. 
How many songs have a duration of over 1 hour?
*/

SELECT COUNT(*) FROM songs WHERE duration > '01:00:00';
-- 2