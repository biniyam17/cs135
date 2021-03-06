
DROP DATABASE IF EXISTS IMDB;


CREATE DATABASE IMDB;

USE IMDB;

-- Create some tables
CREATE TABLE Movie (
	movieid INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(256) NOT NULL,
	director VARCHAR(64) ,
    duration INT ,
    gross INT ,
    genres VARCHAR(256),
    year INT ,
    imdb_score DOUBLE
);

Describe Movie;

LOAD DATA INFILE "/Applications/MAMP/htdocs/cs135/phpMySQLEx/movie.csv"
INTO TABLE Movie
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(title, director, duration, gross,genres,year,imdb_score)
;

#INSERT INTO Movie (title, director) VALUES ("test", "me");

/* SELECT all movies released after 2012 */

SELECT title
FROM Movie
WHERE year >= 2012;

