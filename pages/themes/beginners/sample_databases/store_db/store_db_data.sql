SET FOREIGN_KEY_CHECKS=0;
INSERT INTO `store_db`.`addresses` (`address`) VALUES
    ('Address 1'),
    ('Address 2'),
    ('Address 3'),
    ('Address 4'),
    ('Address 5'),
    ('Address 6'),
    ('Address 7'),
    ('Address 8'),
    ('Address 9');

INSERT INTO `store_db`.`customers` (`fname`, `lname`, `addresses_id`) VALUES
    ('Atanas', 'Ivanov',    '1'),
    ('Atanas', 'Milenkov',  '2'),
    ('Ivelina', 'Katkova',  '3'),
    ('Iva', 'Popova',       '4'),
    ('Niki', 'Dimitrova',   '5'),
    ('Valentin', 'Vasilev', '6');

INSERT INTO `store_db`.`product_categories` (`category_name`) VALUES
    ('Category 1'),
    ('Category 2'),
    ('Category 3'),
    ('Category 4'),
    ('Category 5'),
    ('Category 6'),
    ('Category 7'),
    ('Category 8'),
    ('Category 9');

INSERT INTO `store_db`.`products` (`product_name`, `short_desc`, `long_desc`, `product_category_id`, `price`) VALUES
    ('Product 1', '', '', '1', '2.45'),
    ('Product 2', '', '', '1', '2.55'),
    ('Product 3', '', '', '2', '3.15'),
    ('Product 5', '', '', '2', '4.25'),
    ('Product 6', '', '', '3', '5.35'),
    ('Product 7', '', '', '3', '6.45'),
    ('Product 8', '', '', '4', '7.55'),
    ('Product 9', '', '', '4', '8'),
    ('Product 10', '', '', '5', '18.90'),
    ('Product 11', '', '', '5', '16.70'),
    ('Product 12', '', '', '5', '14.50'),
    ('Product 13', '', '', '6', '12.30'),
    ('Product 14', '', '', '6', '10.10'),
    ('Product 15', '', '', '6', '8.45'),
    ('Product 16', '', '', '6', '48.99'),
    ('Product 17', '', '', '7', '36.86'),
    ('Product 18', '', '', '7', '24.73'),
    ('Product 19', '', '', '7', '12.60'),
    ('Product 20', '', '', '7', '0.47');
SET FOREIGN_KEY_CHECKS=1;
