/*
The database contains 12 albums by the artist Queen. 
How many albums by the artist Tom Waits are in the database?
*/

SELECT COUNT(*) FROM albumartists AA JOIN artists A ON AA.artistid = A.artistid WHERE A.artist = 'Tom Waits';

--24