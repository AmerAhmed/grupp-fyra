USE manufacturing;


DROP TRIGGER IF EXISTS QuantityUpdate;
DELIMITER $$
CREATE TRIGGER QuantityUpdate
AFTER INSERT
    ON orders
FOR EACH ROW

BEGIN
UPDATE products
SET products.quantityin_stock = products.quantityin_stock - NEW.quantity_ordered
WHERE products.product_id = NEW.products_product_id;

END $$
DELIMITER ;

SHOW TRIGGERS;


SELECT * FROM customerCars;

SELECT * FROM customerCars_has_products;

SELECT * FROM customers;

SELECT * FROM customers_has_customerCar1;

SELECT * FROM employees;

SELECT * FROM manufacturer;

SELECT * FROM offices;

SELECT * FROM orders;

SELECT * FROM products;

SELECT * FROM resellers;


# JOIN customers_has_customerCar1
SELECT c.first_name, c.last_name, c.address, c.phone, c.email, c.city,
       c.zip_code, c.country, r.reg_number, r.brand, r.model, r.color,
       r.years FROM customers c
JOIN customers_has_customerCar1 chcc1 ON c.customers_id = chcc1.customers_customers_id
JOIN customerCars r on r.customerCar_id = chcc1.customerCar_customerCar_id
WHERE customerCar_id = 2;


# JOIN  customerCars_has_products
SELECT p.product_name, p.product_number, p.product_vendor, p.product_description,
       p.quantityin_stock, p.buy_price, c.reg_number, c.brand, c.model, c.color,
       c.years FROM products p
JOIN customerCars_has_products cChp ON p.product_id = cChp.products_product_id
JOIN customerCars c on c.customerCar_id = cChp.customerCars_customerCar_id
WHERE customerCar_id = 4


