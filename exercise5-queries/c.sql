/*
The database contains just 5 songs released in 1953. 
What is the largest number of songs released in a single year?

Note: This is a very simple query. Try also to answer which year had the largest
number of songs. Observe how much harder this query is!
*/

SELECT MAX(count) FROM (
    SELECT COUNT(*) AS count FROM songs GROUP BY releasedate
) m;

--311