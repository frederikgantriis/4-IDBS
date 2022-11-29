/*
The average number of albumIds per genreId in albumGenres is 26.5246. 
An album can have multiple genres. 
What is the average number of genreIds per albumId?
*/

SELECT AVG(count) FROM (
    SELECT COUNT(*) AS count 
    --FROM albumgenres GROUP BY genreid
    FROM albumgenres GROUP BY albumid
) m;

--1.1994