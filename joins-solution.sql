-- 1. Get all customers and their addresses.
SELECT * FROM customers
INNER JOIN addresses ON customers.id=addresses.customer_id;

-- 2. Get all orders and their line items.
SELECT * FROM orders
LEFT JOIN line_items ON orders.id=line_items.order_id;

-- 3. Which warehouses have cheetos?
SELECT * FROM warehouse
INNER JOIN warehouse_product ON warehouse.id=warehouse_product.warehouse_id
INNER JOIN products ON warehouse_product.product_id=products.id
WHERE products.description='cheetos';

-- 4. Which warehouses have diet pepsi?
SELECT * FROM warehouse
INNER JOIN warehouse_product ON warehouse.id=warehouse_product.warehouse_id
INNER JOIN products ON warehouse_product.product_id=products.id
WHERE products.description='diet pepsi';

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT * FROM orders
INNER JOIN addresses ON orders.address_id=addresses.id
INNER JOIN customers ON addresses.customer_id=customers.id;


-- 6. How many customers do we have?
SELECT COUNT(*) FROM customers;

-- 7. How many products do we carry
SELECT COUNT(*) FROM products;

-- 8. What is the total available on-hand quantity of diet pepsi
SELECT SUM(on_hand) FROM warehouse_product
INNER JOIN products ON products.id=warehouse_product.product_id
WHERE products.description='diet pepsi';
