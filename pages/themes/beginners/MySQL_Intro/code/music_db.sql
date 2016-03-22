DROP DATABASE IF EXISTS music_db;
CREATE DATABASE music_db;
USE music_db;

CREATE TABLE artist (
  artist_id SMALLINT(5) NOT NULL DEFAULT 0,
  fname VARCHAR(20) DEFAULT NULL,
  lname VARCHAR(20) NOT NULL,
  PRIMARY KEY  (artist_id)
);
CREATE TABLE album (
  album_id SMALLINT(4) NOT NULL DEFAULT 0,
  artist_id SMALLINT(5) NOT NULL,
  album_name CHAR(128) DEFAULT NULL,
  PRIMARY KEY  (artist_id,album_id)
);
CREATE TABLE track (
  track_id SMALLINT(3) NOT NULL DEFAULT 0,
  artist_id SMALLINT(5) NOT NULL DEFAULT 0,
  album_id SMALLINT(4) NOT NULL DEFAULT 0,
  track_name CHAR(128) DEFAULT NULL,
  time DECIMAL(5,2) DEFAULT NULL,
  PRIMARY KEY  (artist_id,album_id, ,m)
);
