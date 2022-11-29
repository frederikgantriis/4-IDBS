/*
The database contains 187 different albums with a genre whose name starts with
Ele (for example, some of these have the genre Electronica). 
How many different albums have a genre whose name starts with Alt?
*/

SELECT COUNT(DISTINCT albumid) FROM albumgenres AG JOIN genres G ON AG.genreid = G.genreid WHERE G.genre LIKE 'Alt%';

--421