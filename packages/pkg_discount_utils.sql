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
        date_of_birth_str VARCHAR2(100);
        department VARCHAR2(100);
        salary NUMBER;
    BEGIN
        SELECT e.first_name, e.last_name, e.date_of_birth, d.department_name, e.salary
        INTO first_name, last_name, date_of_birth, department, salary
        FROM employees e, departments d
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

    FUNCTION get_employees_by_department_id (
        department_id_given IN departments.department_id%TYPE
    ) RETURN departments.department_id%TYPE
    AS
        first_name VARCHAR2(80);
        last_name VARCHAR2(80);
        date_of_birth DATE;
        date_of_birth_str VARCHAR2(100);
        department VARCHAR2(100);
        salary NUMBER;

        CURSOR employees_tbl_curs IS
            SELECT e.first_name, e.last_name, e.date_of_birth, e.salary
            FROM employees e
            WHERE e.department_id IS NOT NULL
                AND e.department_id_id = department_id_given;
            product_rec product_tbl_curs%TYPE;

    BEGIN
        DBMS_OUTPUT.PUT_LINE(product_rec.sname || '--' || product_rec.scountry);

        FOR employees_rec IN employees_tbl_curs LOOP
            date_of_birth_str = TO_CHAR(employees_rec.date_of_birth, "DD - MMMMM - YYYY");

            DBMS_OUTPUT.PUT_LINE(
                'Employees Found: ' || employees_rec.first_name || '--' || employees_rec.last_name
                    || '--' || date_of_birth_str || '--' || salary );
        END LOOP;

        RETURN department_id_given;
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;

END pkg_employees_utils;