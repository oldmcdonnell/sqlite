-- SELECT * FROM Artist;

-- -- SQL ▼
	
-- -- 1
-- --  / 1		 1 - 1 of 1

-- -- Album          Genre          Playlist       Track        
-- -- Artist         MediaType      PlaylistTrack

-- SELECT * FROM Track
-- JOIN Album ON Track.AlbumId = Album.AlbumId
-- WHERE Album.Title = 'Nevermind'

-- SELECT Track.name, Album.Title, Artist.Name, Genre.Name
-- From Track
-- JOIN Album ON Track.AlbumId = Album.AlbumId
-- Join Artist ON Album.ArtistId = Artist.ArtistId
-- JOIN Genre ON Track.GenreId = Genre.GenreId
-- WHERE Artist.Name = 'Nirvana'

SELECT Track.Name AS Track,
Album.Title AS Album,
Artist.Name AS Artist,
Genre.Name AS Genre
FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
JOIN Genre ON Track.GenreId = Genre.GenreId