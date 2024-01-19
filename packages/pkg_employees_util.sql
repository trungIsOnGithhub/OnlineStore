CREATE OR REPLACE PACKAGE pkg_employees_utils AS
    -- Only Public Objects
    FUNCTION get_employees_by_id(id employees.employee_id%TYPE)
        RETURN employees.employee_id%TYPE;

    FUNCTION get_employees_by_id(id suppliers.supplier_id%TYPE)
        RETURN suppliers.supplier_id%TYPE;
END pkg_employees_utils;


CREATE OR REPLACE PACKAGE BODY pkg_employees_utils AS

    FUNCTION get_employees_by_id (
        employee_id_given IN employees.employee_id%TYPE
    ) RETURN employees.employee_id%TYPE
    AS
        first_name VARCHAR2(80);
        last_name VARCHAR2(80);
        date_of_birth DATE;
        department VARCHAR2(100);
        salary NUMBER;
    BEGIN
        SELECT e.first_name, e.last_name, e.date_of_birth, d.department_name, e.salary
        INTO first_name, last_name, date_of_birth, department, salary
        FROM employees e, departments, d
        WHERE e.department_id IS NOT NULL
            AND e.department_id = d.department_id
            AND e.employee_id = employee_id_given;

        date_of_birth_str = TO_CHAR(date_of_birth, "DD - MMMMM - YYYY");

        DBMS_OUTPUT.PUT_LINE(
            'Product Found: ' || first_name || '--' || last_name
            || '--' || date_of_birth_str || '--' || department
            || '--' || salary );

        RETURN employee_id_given;
    EXCEPTION
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

END pkg_employees_utils;