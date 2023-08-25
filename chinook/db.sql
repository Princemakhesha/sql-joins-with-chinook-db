SELECT * from playlists;
SELECT * from tracks;
SELECT * from playlist_track;
SELECT * from playlists
select * from playlists where Name LIKE '%s'
select * from artists where Name like 'A%'
select * from albums where ArtistId = 150
SELECT * FROM albums WHERE ArtistId =149

--find all the albums for a given artist
SELECT Name, AlbumId, Title from artists
JOIN albums on artists.ArtistId = albums.ArtistId
where artists.ArtistId = 17

-- find all the songs for a given genre
SELECT * FROM genres
JOIN tracks on genres.GenreId = tracks.GenreId
where genres.GenreId = 5;

select * from tracks where GenreId = 5;


--find all the songs in a playlist by playlist name
select * from playlists
join playlist_track 
on playlist_track.PlaylistId = playlists.PlaylistId
join tracks 
on playlist_track.TrackId = tracks.TrackId
where playlists.Name = "Music"

--find all the artists for a given genre
SELECT * FROM artists
JOIN albums on artist.ArtistId = albums.ArtistId
JOIN tracks on albums.AlbumId = tracks.AlbumId
JOIN genres on tracks.GenreId = genres.GenreId
WHERE artists.Name = "Accept" 