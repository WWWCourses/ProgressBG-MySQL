-- Create DB: household_db
DROP DATABASE IF EXISTS household_db;
CREATE DATABASE household_db;
USE household_db;

DROP TABLE IF EXISTS family_member;
CREATE TABLE family_member (
    id SMALLINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(250) DEFAULT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS product_category;
CREATE TABLE product_category(
    id SMALLINT(2) UNSIGNED NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(250),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS product;
CREATE TABLE product (
    id MEDIUMINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(250) NOT NULL,
    price DECIMAL(7,2),
    category_id SMALLINT(2) UNSIGNED NOT NULL,
    PRIMARY KEY (id)
    # define FOREIGN KEY constraints for category_id on product_category.id
);

DROP TABLE IF EXISTS purchase;
CREATE TABLE purchase(
    id INT(7) UNSIGNED NOT NULL AUTO_INCREMENT,
    family_member_id SMALLINT(1) UNSIGNED NOT NULL,
    product_id MEDIUMINT(5) UNSIGNED NOT NULL,
    PRIMARY KEY (id)
);




