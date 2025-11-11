DECLARE
    -- Create a record variable based on the CUSTOMERS table structure
    v_customer   customers%ROWTYPE;
    v_product    products%ROWTYPE;
BEGIN
    -- Get one customer's record
    SELECT *
    INTO v_customer
    FROM customers
    WHERE customer_id = 1002;

    -- Get one product's record
    SELECT *
    INTO v_product
    FROM products
    WHERE product_id = 3001;

    -- Use those record fields to insert into transactions
    INSERT INTO transactions (transaction_id, customer_id, product_id, sale_date, amount)
    VALUES (7001, v_customer.customer_id, v_product.product_id, SYSDATE, 880000);

    DBMS_OUTPUT.PUT_LINE('Transaction added for customer: ' || v_customer.name);
END;
/
