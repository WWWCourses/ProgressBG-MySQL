CREATE TABLE IF NOT EXISTS integer_datatypes(
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  tinyint_data tinyint(4) DEFAULT NULL,
  smallint_data smallint(6) DEFAULT NULL,
  mediumint_data mediumint(9) DEFAULT NULL,
  int_data int(11) DEFAULT NULL,
  bigint_data bigint(20) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO integer_datatypes (tinyint_data,smallint_data,mediumint_data,int_data,bigint_data )
VALUES (100, 20000, 3000000, 100000000, 10000000000000000 );
## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CREATE TABLE IF NOT EXISTS real_datatypes(
  id int(10) unsigned NOT NULL AUTO_INCREMENT,

  PRIMARY KEY (id)
);

INSERT INTO real_datatypes (decimal_data,smallint_data,mediumint_data,int_data,bigint_data )
VALUES (100, 20000, 3000000, 100000000, 10000000000000000 );
