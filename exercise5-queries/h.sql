/*
An album can have multiple genres. 
There are 1215 albums in the database that do not have the genre Rock. 
How many albums do not have the genre HipHop?
*/

SELECT COUNT(*) FROM albums A 
WHERE NOT EXISTS (
    SELECT * 
    FROM albumgenres AG 
        JOIN genres G ON AG.genreid = G.genreid 
    WHERE G.genre = 'HipHop' 
    AND AG.albumid = A.albumid
);

--1278