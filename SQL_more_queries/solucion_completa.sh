#!/bin/bash

# Tarea 0
echo -e "SHOW GRANTS FOR 'user_0d_1'@'localhost';\nSHOW GRANTS FOR 'user_0d_2'@'localhost';" > 0-privileges.sql

# Tarea 1
echo -e "-- Script that creates the MySQL server user user_0d_1\nCREATE USER IF NOT EXISTS 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';\nGRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';" > 1-create_user.sql

# Tarea 2
echo -e "-- Script that creates the database hbtn_0d_2 and the user user_0d_2\nCREATE DATABASE IF NOT EXISTS hbtn_0d_2;\nCREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';\nGRANT SELECT ON hbtn_0d_2.* TO 'user_0d_2'@'localhost';" > 2-create_read_user.sql

# Tarea 3
echo -e "-- Script that creates the table force_name\nCREATE TABLE IF NOT EXISTS force_name (id INT, name VARCHAR(256) NOT NULL);" > 3-force_name.sql

# Tarea 4
echo -e "-- Script that creates the table id_not_null\nCREATE TABLE IF NOT EXISTS id_not_null (id INT DEFAULT 1, name VARCHAR(256));" > 4-never_empty.sql

# Tarea 5
echo -e "-- Script that creates the table unique_id\nCREATE TABLE IF NOT EXISTS unique_id (id INT DEFAULT 1 UNIQUE, name VARCHAR(256));" > 5-unique_id.sql

# Tarea 6
echo -e "-- Script that creates the database hbtn_0d_usa and the table states\nCREATE DATABASE IF NOT EXISTS hbtn_0d_usa;\nUSE hbtn_0d_usa;\nCREATE TABLE IF NOT EXISTS states (id INT NOT NULL AUTO_INCREMENT, name VARCHAR(256) NOT NULL, PRIMARY KEY (id));" > 6-states.sql

# Tarea 7
echo -e "-- Script that creates the database hbtn_0d_usa and the table cities\nCREATE DATABASE IF NOT EXISTS hbtn_0d_usa;\nUSE hbtn_0d_usa;\nCREATE TABLE IF NOT EXISTS cities (id INT UNIQUE AUTO_INCREMENT NOT NULL, state_id INT NOT NULL, name VARCHAR(256) NOT NULL, PRIMARY KEY (id), FOREIGN KEY(state_id) REFERENCES states(id));" > 7-cities.sql

# Tarea 8
echo -e "-- Script that lists all the cities of California that can be found in the database hbtn_0d_usa\nSELECT id, name FROM cities WHERE state_id = (SELECT id FROM states WHERE name = 'California') ORDER BY id ASC;" > 8-cities_of_california_subquery.sql

# Tarea 9
echo -e "-- Script that lists cities and their states\nSELECT cities.id, cities.name, states.name FROM cities LEFT JOIN states ON cities.state_id = states.id ORDER BY cities.id ASC;" > 9-cities_by_state_join.sql

# Tarea 10
echo -e "-- Script that lists all shows contained in hbtn_0d_tvshows that have at least one genre linked\nSELECT tv_shows.title, tv_show_genres.genre_id FROM tv_shows JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id ORDER BY tv_shows.title ASC, tv_show_genres.genre_id ASC;" > 10-genre_id_by_show.sql

# Tarea 11
echo -e "-- Script that lists all shows contained in the database hbtn_0d_tvshows\nSELECT tv_shows.title, tv_show_genres.genre_id FROM tv_shows LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id ORDER BY tv_shows.title ASC, tv_show_genres.genre_id ASC;" > 11-genre_id_all_shows.sql

# Tarea 12
echo -e "-- Script that lists all shows without a genre linked\nSELECT tv_shows.title, tv_show_genres.genre_id FROM tv_shows LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id WHERE tv_show_genres.genre_id IS NULL ORDER BY tv_shows.title ASC, tv_show_genres.genre_id ASC;" > 12-no_genre.sql

# Tarea 13
echo -e "-- Script that lists all genres from hbtn_0d_tvshows and displays the number of shows linked to each\nSELECT tv_genres.name AS genre, COUNT(tv_show_genres.genre_id) AS number_of_shows FROM tv_genres JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id GROUP BY tv_genres.name ORDER BY number_of_shows DESC;" > 13-count_shows_by_genre.sql

# Tarea 14
echo -e "-- Script that uses the hbtn_0d_tvshows database to list all genres of the show Dexter\nSELECT tv_genres.name FROM tv_genres JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id JOIN tv_shows ON tv_show_genres.show_id = tv_shows.id WHERE tv_shows.title = 'Dexter' ORDER BY tv_genres.name ASC;" > 14-my_genres.sql

# Tarea 15
echo -e "-- Script that lists all Comedy shows in the database hbtn_0d_tvshows\nSELECT tv_shows.title FROM tv_shows JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id WHERE tv_genres.name = 'Comedy' ORDER BY tv_shows.title ASC;" > 15-comedy_only.sql

# Tarea 16
echo -e "-- Script that lists all shows, and all genres linked to that show, from the database hbtn_0d_tvshows\nSELECT tv_shows.title, tv_genres.name FROM tv_shows LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id LEFT JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id ORDER BY tv_shows.title ASC, tv_genres.name ASC;" > 16-shows_by_genre.sql

# README
echo -e "# SQL - More Queries\nSolutions for SQL permissions, joins and subqueries." > README.md




