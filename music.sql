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


-- SELECT Track.Name AS Track,
-- Album.Title AS Album,
-- Artist.Name AS Artist,
-- Genre.Name AS Genre
-- FROM Track
-- JOIN Album ON Track.AlbumId = Album.AlbumId
-- JOIN Artist ON Album.ArtistId = Artist.ArtistId
-- JOIN Genre ON Track.GenreId = Genre.GenreId
-- WHERE Album.Title = 'Nevermind'


-- SELECT Track.Name AS Track,
-- Album.Title AS Album,
-- Artist.Name AS Artist
-- Genre.Name AS Genre
-- FROM Track
-- JOIN Album ON Track.AlbumId = Album.AlbumId
-- JOIN Artist ON Album.ArtistId = Artist.ArtistId
-- JOIN Genre ON  Track.GenreId = Genre.GenreId
-- WHERE Track.Name LIKE '%Dog%'


-- SELECT Track.Name AS Track,
-- Album.Title AS Album,
-- Artist.Name AS Artist,
-- Genre.Name AS Genre
-- FROM Track
-- JOIN Album ON Track.AlbumId = Album.AlbumId
-- JOIN Artist ON Album.ArtistId = Artist.ArtistId
-- JOIN Genre ON Track.GenreId = Genre.GenreId
-- WHERE Track.Name LIKE '%Dog%'
-- AND Artist.Name = 'Led Zeppelin'


-- SELECT * FROM Playlist;
-- SELECT * FROM PlaylistTrack;

-- SELECT Playlist.Name as Playlist, Track.Name As Track, Artist.Name AS Artist
-- FROM Track
-- JOIN Album on Track.AlbumId = Album.AlbumId
-- JOIN Artist ON Album.ArtistId = Artist.ArtistId
-- JOIN PlaylistTrack ON Track.TrackId = PlaylistTrack.TrackId
-- JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
-- WHERE Playlist.Name = 'Grunge'

-- SELECT Playlist.Name as Playlist, Track.Name As Track, Artist.Name AS Artist
-- FROM Track
-- JOIN Album on Track.AlbumId = Album.AlbumId
-- JOIN Artist ON Album.ArtistId = Artist.ArtistId
-- JOIN PlaylistTrack ON Track.TrackId = PlaylistTrack.TrackId
-- JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
-- WHERE Artist.Name = 'Nirvana'
-- ORDER BY Playlist.Name

-- SELECT Playlist.Name as Playlist, 
-- Track.Name As Track, 
-- Artist.Name AS Artist
-- FROM Track
-- JOIN Album on Track.AlbumId = Album.AlbumId
-- JOIN Artist ON Album.ArtistId = Artist.ArtistId
-- JOIN PlaylistTrack ON Track.TrackId = PlaylistTrack.TrackId
-- JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
-- WHERE Artist.Name = 'Nirvana'
-- ORDER BY Track.Name



-- SELECT Playlist.Name as Playlist,
-- Track.Name As Track,
-- Artist.Name as Artist,
-- Album.Title as Title
-- FROM Track
-- JOIN Album ON Track.AlbumId = Album.AlbumId
-- JOIN Artist ON Album.ArtistId = Artist.ArtistId
-- JOIN PlaylistTrack ON Track.TrackId = PlaylistTrack.TrackId
-- JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
-- WHERE Artist.Name = 'Nirvana'
-- GROUP BY Playlist.Name, Track.Name
-- ORDER BY Playlist.Name, Track.Name


-- SELECT COUNT(Playlist.Name) as PlaylistAppearances,
-- Track.Name As Track,
-- Artist.Name as Artist,
-- FROM Track
-- JOIN Album ON Track.AlbumId = Album.AlbumId
-- JOIN Artist ON Album.ArtistId = Artist.ArtistId
-- JOIN PlaylistTrack ON Track.TrackId = PlaylistTrack.TrackId
-- JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
-- WHERE Artist.Name = 'Nirvana'
-- GROUP BY Track.Name
-- ORDER BY PlaylistAppearances DESC

-- SELECT COUNT(Playlist.Name) as PlaylistAppearances,
-- Track.Name As Track,
-- Artist.Name as Artist
-- FROM Track
-- JOIN Album ON Track.AlbumId = Album.AlbumId
-- JOIN Artist ON Album.ArtistId = Artist.ArtistId
-- JOIN PlaylistTrack ON Track.TrackId = PlaylistTrack.TrackId
-- JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
-- WHERE Artist.Name = 'Nirvana'
-- GROUP BY Track.Name
-- ORDER BY PlaylistAppearances DESC

SELECT SUM(Track.UnitPrice) as TotalCost,
Playlist.Name as Playlist
FROM Track
JOIN PlaylistTrack ON Track.TrackId - PlaylistTrack.TrackId
jOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY Playlist.Name