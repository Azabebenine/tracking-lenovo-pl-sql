------------------------------------------------------------
-- 🔹 Insert data into CUSTOMERS
------------------------------------------------------------
INSERT ALL
    INTO customers (customer_id, name, region) VALUES (1001, 'John Mwangi', 'Nairobi')
    INTO customers (customer_id, name, region) VALUES (1002, 'Alice Mugisha', 'Nairobi')
    INTO customers (customer_id, name, region) VALUES (1003, 'Peter Otieno', 'Kisumu')
    INTO customers (customer_id, name, region) VALUES (1004, 'Grace Njeri', 'Mombasa')
    INTO customers (customer_id, name, region) VALUES (1005, 'David Kimani', 'Eldoret')
SELECT * FROM dual;

------------------------------------------------------------
-- 🔹 Insert data into PRODUCTS
------------------------------------------------------------
INSERT ALL
    INTO products (product_id, name, category) VALUES (3001, 'Lenovo ThinkPad E15', 'Laptop')
    INTO products (product_id, name, category) VALUES (3002, 'Lenovo Legion 5', 'Laptop')
    INTO products (product_id, name, category) VALUES (3003, 'Lenovo IdeaPad 3', 'Laptop')
    INTO products (product_id, name, category) VALUES (3004, 'Lenovo USB-C Dock', 'Accessory')
    INTO products (product_id, name, category) VALUES (3005, 'Lenovo Wireless Mouse', 'Accessory')
SELECT * FROM dual;

------------------------------------------------------------
-- 🔹 Insert data into TRANSACTIONS
------------------------------------------------------------
INSERT ALL
    INTO transactions (transaction_id, customer_id, product_id, sale_date, amount)
        VALUES (5001, 1002, 3001, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 850000)
    INTO transactions (transaction_id, customer_id, product_id, sale_date, amount)
        VALUES (5002, 1001, 3003, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 650000)
    INTO transactions (transaction_id, customer_id, product_id, sale_date, amount)
        VALUES (5003, 1003, 3005, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 4500)
    INTO transactions (transaction_id, customer_id, product_id, sale_date, amount)
        VALUES (5004, 1004, 3002, TO_DATE('2024-06-20', 'YYYY-MM-DD'), 1200000)
    INTO transactions (transaction_id, customer_id, product_id, sale_date, amount)
        VALUES (5005, 1005, 3004, TO_DATE('2024-07-05', 'YYYY-MM-DD'), 25000)
SELECT * FROM dual;

COMMIT;

