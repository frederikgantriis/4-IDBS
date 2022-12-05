-- 5a
select count(*)
from songs
where extract(epoch from duration) > 3600;

-- 5b
select sum(extract(epoch from duration))
from songs;

-- 5c
select max(count)
from (
	select count(*) as count
	from songs
	group by extract(year from releaseDate)
) as g

-- 5d
select count(*)
from AlbumArtists as AlbArt join Artists as Art on AlbArt.ArtistId = Art.ArtistId
where Art.Artist = 'Tom Waits';

-- 5e
select count(Distinct AlbGen.AlbumId)
from AlbumGenres as AlbGen join Genres as Gen on AlbGen.GenreId = Gen.GenreId
where Gen.Genre like 'Alt%';

-- 5f
select count(count)
from (
	select count(*) as count
	from Songs
	group by Title
	having count(*) > 1
) as g;

select count(*)
from Songs as S1 join Songs as S2 on S1.Title = S2.Title and S1.SongId != S2.SongId;



-- 5g
select avg(count)
from (
	select count(*) as count
	from AlbumGenres
	group by AlbumId
) as g;

-- 5h
select count(*)
from (
	select AlbumId
	from Albums
	except
	select AlbumId
	from AlbumGenres as AlbGen join Genres as Gen on AlbGen.GenreId = Gen.GenreId
	where Gen.Genre = 'HipHop'
) as g;