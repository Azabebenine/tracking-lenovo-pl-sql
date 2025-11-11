set serveroutput on;
DECLARE
    -- Define a collection type based on the CUSTOMERS table structure
    TYPE customer_table_type IS TABLE OF customers%ROWTYPE INDEX BY PLS_INTEGER;

    v_customer_list customer_table_type;
    i PLS_INTEGER := 0;
BEGIN
    -- Load data into the collection
    FOR rec IN (SELECT * FROM customers ORDER BY customer_id) LOOP
        i := i + 1;
        v_customer_list(i) := rec;
    END LOOP;

    -- Display all customers from the collection
    i := v_customer_list.FIRST;
    WHILE i IS NOT NULL LOOP
        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_customer_list(i).customer_id || 
            ', Name: ' || v_customer_list(i).name || 
            ', Region: ' || v_customer_list(i).region
        );
        i := v_customer_list.NEXT(i);
    END LOOP;
END;
/

