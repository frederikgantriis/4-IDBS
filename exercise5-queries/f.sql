/*
For how many songs does there exist another different song in the database with the
same title?
*/

SELECT COUNT(*) FROM songs S1 JOIN songs S2 ON S1.title = S2.title WHERE S1.songid <> S2.songid;

--3044