INSERT INTO artist (id, name)
VALUES
(1, 'Charlie XCX'),
(2, 'Billie Eilish'),
(3, '30 Seconds to Mars'),
(4, 'Tyler, The Creator');

INSERT INTO genre (id, name)
VALUES
(1, 'Pop'),
(2, 'Rock'),
(3, 'Rap');

INSERT INTO album (id, name, year)
VALUES
(1, 'Brat', '2024-09-21'),
(2, 'Love Lust Faith', '2013-05-11'),
(3, 'Igor', '2019-03-30'),
(4, 'WAR', '2011-06-12'),
(5, 'Crash', '2022-07-17'),
(6, 'Sucker', '2014-01-27')
ON CONFLICT DO NOTHING;

INSERT INTO track (id, name, duration)
VALUES
(1, 'Apple', 2.31),
(2, 'Guess', 2.22),
(3, 'Up in the Air', 4.36),
(4, 'City of Angels', 5.02),
(5, 'I Think', 3.32),
(6, 'Running Out of Time', 2.57);

INSERT INTO collection (id, name, year)
VALUES
(1, 'Dance music', '2024-11-21'),
(2, 'Summer time', '2013-07-23'),
(3, 'Good vibes', '2020-09-10'),
(4, 'Run', '2015-03-12');