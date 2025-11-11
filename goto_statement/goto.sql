DECLARE
    v_customer_id  NUMBER := 1002;  -- try changing this to test
    v_product_id   NUMBER := 3001;
    v_exists       NUMBER;
BEGIN
    -- Check if the customer exists
    SELECT COUNT(*) INTO v_exists
    FROM customers
    WHERE customer_id = v_customer_id;

    -- If not found, jump to label
    IF v_exists = 0 THEN
        GOTO customer_not_found;
    END IF;

    -- If found, perform transaction insert
    INSERT INTO transactions (transaction_id, customer_id, product_id, sale_date, amount)
    VALUES (6001, v_customer_id, v_product_id, SYSDATE, 950000);

    DBMS_OUTPUT.PUT_LINE('Transaction inserted successfully.');
    GOTO end_of_block;

    <<customer_not_found>>
    DBMS_OUTPUT.PUT_LINE('Error: Customer not found. Transaction aborted.');

    <<end_of_block>>
    DBMS_OUTPUT.PUT_LINE('End of PL/SQL block.');
END;
/
