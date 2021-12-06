DELIMITER $$

CREATE TRIGGER updateInStock
BEFORE UPDATE ON orders
FOR EACH ROW BEGIN

UPDATE orders, orderDetails b, products d
SET d.quantityin_stock = d.quantityin_stock - b.quantity_ordered
WHERE NEW.order_id = b.orders_order_id AND b.products_product_id = d.product_id;
END ;

DELIMITER ;
