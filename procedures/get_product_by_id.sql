CREATE OR REPLACE PROCEDURE get_product_by_id (
product_id_given IN product.product_id%TYPE
) AS
    product_name VARCHAR2(100);
    category VARCHAR2();
    sku VARCHAR2(100);
    price NUMBER;
    price_str VARCHAR(10);
BEGIN
    SELECT p.product_name, p.category_id,
            p.sku, p.price
    INTO product_name, category, sku, price
    FROM product p
    WHERE p.product_id = 1;

    price_str = TO_CHAR(price, '9999999999')

    DBMS_OUTPUT.PUT_LINE(
        'Product Found: ' || product_name || '--' || category_id
        || '--'|| sku || '--' || price_str );
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No Product Found For Given ID');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More Than 1 Product Found for Given ID');
    WHEN OTHERS THEN
        NULL;
END get_product_by_id;