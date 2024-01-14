CREATE OR REPLACE PACKAGE pkg_product_utils AS
    -- Only Public Objects
    FUNCTION get_product_by_id(id product.product_id%TYPE)
        RETURN product.product_id%TYPE;

    FUNCTION get_product_by_id(id suppliers.supplier_id%TYPE)
        RETURN suppliers.supplier_id%TYPE;
END pkg_product_utils;


CREATE OR REPLACE PACKAGE BODY pkg_product_utils AS

    FUNCTION get_product_by_id (
        product_id_given IN product.product_id%TYPE
    ) RETURN product.product_id%TYPE
    AS
        product_name VARCHAR2(100);
        sku VARCHAR2(100);
        price NUMBER;
        price_str VARCHAR(10);
    BEGIN
        SELECT p.product_name, p.sku, p.price
        INTO product_name, sku, price
        FROM product p
        WHERE p.product_id = product_id_given;

        price_str = TO_CHAR(price, '9999999999')

        DBMS_OUTPUT.PUT_LINE(
            'Product Found: ' || product_name || '--' || category_id
            || '--'|| sku || '--' || price_str );

        RETURN product_id_given;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('No Product Found For Given ID');
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('More Than 1 Product Found for Given ID');
        WHEN OTHERS THEN
            NULL;
    END;

    FUNCTION get_products_by_supplier_id (
        supplier_id_given IN suppliers.supplier_id%TYPE
    ) RETURN suppliers.supplier_id%TYPE
    AS
        price_str VARCHAR(10);

        CURSOR product_tbl_curs IS
            SELECT p.product_name as pname, p.sku AS psku,
                    p.price AS pprice, s.company_name AS sname,
                    s.country AS scountry
            FROM product p, suppliers s
            WHERE p.supplier_id IS NOT NULL
                AND p.supplier_id = s.supplier_id;

        product_rec product_tbl_curs%TYPE;

    BEGIN
        DBMS_OUTPUT.PUT_LINE(product_rec.sname || '--' || product_rec.scountry);

        FOR product_rec IN product_tbl_curs LOOP
            price_str = TO_CHAR(product_rec.pprice, '9999999999')

            DBMS_OUTPUT.PUT_LINE('Product Found: ' || product_rec.pname
                || '--' || product_rec.psku || '--'|| price_str
            );
        END LOOP;

        RETURN supplier_id_given;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('No Product Found For Given ID');
        WHEN OTHERS THEN
            NULL;
    END;

END pkg_product_utils;