INSERT INTO artistgenre (artist_id, genre_id) VALUES
    (1, 1), (1, 2), (2, 1), (2, 3), (3, 2);

SELECT genre_id, COUNT(DISTINCT artist_id) AS artist_count
FROM artistgenre
GROUP BY genre_id;

SELECT album.year, album.name, COUNT(track.id) AS track_count
FROM album
JOIN track ON album.id = track.id
WHERE album.year BETWEEN '2019-01-01' AND '2020-12-31' 
GROUP BY album.year, album.name;

SELECT album.id, album.year, album.name, AVG(track.duration) AS avg_track_duration
FROM album
JOIN track ON album.id = track.id
GROUP BY album.id, album.year, album.name;

SELECT DISTINCT artist.name
FROM artist
WHERE NOT EXISTS (SELECT 1
FROM album
WHERE album.id = artist.id and album.year BETWEEN '2020-01-01' AND '2020-12-31');

INSERT INTO set (track_id, collection_id) VALUES
    (1, 1), (1, 2), (2, 1), (2, 3), (3, 2);
   
INSERT INTO artistalbum (artist_id, album_id) VALUES
    (1, 1), (1, 2), (2, 1), (2, 3), (3, 2);

SELECT collection.name 
FROM collection
JOIN set ON collection.id = set.collection_id
JOIN track ON set.track_id = track.id
JOIN album ON track.id = album.id
JOIN artistalbum ON album.id = artistalbum.album_id
JOIN artist ON artistalbum.artist_id = artist.id
WHERE artist.name = 'Charlie XCX';