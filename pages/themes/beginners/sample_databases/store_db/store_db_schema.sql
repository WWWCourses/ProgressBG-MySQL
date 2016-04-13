-- Create DB: store_db
DROP DATABASE IF EXISTS store_db;
CREATE DATABASE store_db;
USE store_db;

DROP TABLE IF EXISTS store_db.customers;
CREATE TABLE customers (
    id SMALLINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
    fname VARCHAR(250) DEFAULT NULL,
    lname VARCHAR(250) NOT NULL,
    address_id SMALLINT(3) UNSIGNED,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS store_db.addresses;
CREATE TABLE addresses (
    id SMALLINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
    address VARCHAR(250) DEFAULT NULL,
    PRIMARY KEY (id)
);
DROP TABLE IF EXISTS store_db.orders;
CREATE TABLE orders(
    id INT(7) UNSIGNED NOT NULL AUTO_INCREMENT,
    customer_id SMALLINT(3) UNSIGNED NOT NULL,
    order_datetime DATETIME NOT NULL,
    PRIMARY KEY (id)
);
DROP TABLE IF EXISTS store_db.products;
CREATE TABLE products (
    id MEDIUMINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(250) NOT NULL,
    short_desc VARCHAR(250) DEFAULT '',
    long_desc TINYTEXT,
    category_id SMALLINT(2) UNSIGNED NOT NULL,
    price DECIMAL(7,2),
    PRIMARY KEY (id)
    # define FOREIGN KEY constraints for category_id on product_category.id
)
ENGINE = InnoDB
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

DROP TABLE IF EXISTS store_db.product_category;
CREATE TABLE product_category(
    id SMALLINT(2) UNSIGNED NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(250),
    PRIMARY KEY (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

DROP TABLE IF EXISTS store_db.products_orders;
CREATE TABLE products_orders(
    id SMALLINT(2) UNSIGNED NOT NULL AUTO_INCREMENT,
    product_id MEDIUMINT(5) UNSIGNED NOT NULL,
    order_id INT(7) UNSIGNED NOT NULL,
    PRIMARY KEY (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

DROP TABLE IF EXISTS store_db.orders_has_products;
CREATE TABLE store_db.orders_has_products (
  orders_id INT(7) UNSIGNED NOT NULL,
  products_id MEDIUMINT(5) UNSIGNED NOT NULL,
  PRIMARY KEY (orders_id, products_id),
  INDEX fk_orders_has_products_products1_idx (products_id ASC),
  CONSTRAINT fk_orders_has_products_orders1
    FOREIGN KEY (orders_id)
    REFERENCES store_db.orders (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_orders_has_products_products1
    FOREIGN KEY (products_id)
    REFERENCES store_db.products (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;





