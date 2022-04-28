CREATE DATABASE IF NOT EXISTS shirts_db DEFAULT CHARSET = utf8;
USE shirts_db;
DROP TABLE IF EXISTS shirts;

CREATE TABLE shirts 
(
shirt_id INT AUTO_INCREMENT,
article TEXT, 
color TEXT, 
shirt_size TEXT, 
last_worn INT,
PRIMARY KEY(shirt_id)
);

INSERT INTO shirts
(
article, 
color, 
shirt_size, 
last_worn
)
VALUES
	(
		't-shirt',
		'white',
		'S',
		10
	),
    (
		't-shirt',
		'green',
		'S',
		200
	),
    (
		'polo shirt',
		'black',
		'M',
		10
	),
    (
		'tank top',
		'blue',
		'S',
		50
	),
    (
		't-shirt',
		'pink',
		'S',
		0
	),
    (
		'polo shit',
		'red',
		'M',
		5
	),
    (
		'tank top',
		'white',
		'S',
		200
	),
    (
		'tank top',
		'blue',
		'M',
		15
	);

INSERT INTO shirts
(
article, 
color, 
shirt_size, 
last_worn
)
VALUES
	(
		'polo shirt',
		'purple',
		'M',
		50
	);
-- #3
SELECT article, color
FROM shirts; 
-- #4
SELECT article, color, shirt_size, last_worn FROM shirts
WHERE shirt_size = 'M';
-- #5
UPDATE shirts
SET shirt_size = 'L'
WHERE article = 'polo shirt';
-- #6
UPDATE shirts
SET last_worn = 0
WHERE last_worn = 15;
-- #7
UPDATE shirts
SET color = 'off white',
	shirt_size = 'XS'
WHERE color = 'white';
-- #8
DELETE FROM shirts
WHERE last_worn = 200;
-- #9
DELETE FROM shirts
WHERE article = 'tank top';
-- #10
DELETE FROM shirts;
-- #11
DROP TABLE shirts;