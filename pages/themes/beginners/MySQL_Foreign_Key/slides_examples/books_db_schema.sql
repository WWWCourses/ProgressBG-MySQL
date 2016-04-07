DROP DATABASE IF EXISTS books_db;
CREATE DATABASE books_db;
USE books_db;

CREATE TABLE author (
    id SMALLINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
    fname VARCHAR(250) DEFAULT NULL,
    lname VARCHAR(250) NOT NULL,
    birth_year SMALLINT(4) DEFAULT NULL,
    death_year SMALLINT(4) DEFAULT NULL,
    PRIMARY KEY(id)
<<<<<<< HEAD
);
CREATE TABLE publisher (
    id SMALLINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
    pub_name VARCHAR(250) DEFAULT NULL,
    phone MEDIUMINT(6) DEFAULT NULL,
    address VARCHAR(250) DEFAULT NULL,
    PRIMARY KEY(id)
=======
>>>>>>> 96b91c6... MySQL_Foreign_Key
);
CREATE TABLE book (
    id SMALLINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
    author_id SMALLINT(3) UNSIGNED NOT NULL,
    book_name VARCHAR(250) UNIQUE NOT NULL,
    pub_year SMALLINT(4) UNSIGNED DEFAULT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY fk_AuthorID (author_id) REFERENCES author (id)
        ON DELETE CASCADE
);
