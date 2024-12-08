SELECT name, duration
FROM track
ORDER BY duration DESC
LIMIT 1;

SELECT name
FROM track
WHERE duration >= 3.5;

SELECT name
FROM album
WHERE year BETWEEN '2018-01-01' AND '2020-01-01';


INSERT INTO artist (id, name)
VALUES
(5, 'Troye');

INSERT INTO album (id, name, year)
VALUES
(7, 'Bloom', '2018-04-12');


INSERT INTO track (id, name, duration)
VALUES
(7, 'My My My!', 3.10);

SELECT name
FROM artist
WHERE name NOT LIKE '% %';

SELECT name
FROM track
WHERE name LIKE '%мой%' OR name LIKE '%My%';