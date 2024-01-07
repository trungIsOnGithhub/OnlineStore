/*******************************************************************************
   sample-database-online-store - Version 1.0
   
   Script: main.sql
   Description: Creates the database structure.
   Template By: Michal Wisniewski
   Assignment: Project to learn and practice designing a simple database app with more specilized features
********************************************************************************/

/*******************************************************************************
   Drop database if it exists
********************************************************************************/

DROP USER AdminStore CASCADE;

/*******************************************************************************
   Create User
********************************************************************************/

CREATE USER AdminStore
IDENTIFIED BY 1234
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
QUOTA 10M ON users;

GRANT ALL PRIVILEGES TO AdminStore;

CONNECT AdminStore/1234

/*******************************************************************************
   Create Sequences
********************************************************************************/

-- Sequence for store_users.user_id column value 
   
CREATE SEQUENCE seq_store_users_id
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Sequence product.product_id column value 

CREATE SEQUENCE seq_product_product_id
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Sequence for discount.discount_id column value

CREATE SEQUENCE seq_discount_discount_id
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Sequence for cart_item.cart_item_id column value

CREATE SEQUENCE seq_cart_item_cart_item_id
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Sequence for shopping_session.session_id column value

CREATE SEQUENCE seq_shopping_session_session_id
START WITH 1
INCREMENT BY 1
CACHE 1000;

-- Sequence for order_details.order_details_id column value

CREATE SEQUENCE seq_order_details_order_detail_id
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Sequence for order_items.order_items_id column value

CREATE SEQUENCE seq_order_items_order_items_id
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Sequence for payment_details.payment_details_id column value

CREATE SEQUENCE seq_payment_details_payment_details_id
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Sequence for employees.employee_id column value

CREATE SEQUENCE seq_employees_employee_id
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Sequence for departments.department_id column value

CREATE SEQUENCE seq_departments_department_id
START WITH 1
INCREMENT BY 1
NOCACHE;

/*******************************************************************************
   Create Tables
********************************************************************************/

-- W O R K   I N    P R O G R E S S --

CREATE TABLE store_users
(
 user_id        INTEGER DEFAULT seq_store_users_id.nextval PRIMARY KEY,
 first_name     VARCHAR2(80) NOT NULL,
 middle_name    VARCHAR2(80),
 last_name      VARCHAR2(80) NOT NULL,
 phone_number   VARCHAR2(30) UNIQUE NOT NULL 
                                    CONSTRAINT check_phone_number_store_users 
                                    CHECK (REGEXP_LIKE(phone_number, '^\d{3}.\d{3}.\d{4}$')),
 email          VARCHAR2(80) UNIQUE NOT NULL,
 username       VARCHAR2(30) UNIQUE NOT NULL,
 user_password  VARCHAR2(30) NOT NULL,
 registered_at  TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL
);

CREATE TABLE product
(
 product_id     INTEGER DEFAULT seq_product_product_id.nextval PRIMARY KEY,
 product_name   VARCHAR2(100),
 product_desc   VARCHAR2(200),
 category_id    INTEGER NOT NULL, 
 sku            VARCHAR2(100) NOT NULL,
 price          NUMBER NOT NULL,
 discount_id    INTEGER NOT NULL,
 created_at     TIMESTAMP,
 last_modified  TIMESTAMP,
 deleted_at     TIMESTAMP
);



CREATE TABLE discount
(
 discount_id        INTEGER DEFAULT seq_discount_discount_id.nextval PRIMARY KEY,
 discount_name      VARCHAR2(100) NOT NULL,
 discount_desc      VARCHAR2(200),
 discount_percent   NUMBER NOT NULL, 
 is_active_status   VARCHAR2(1) NOT NULL 
                                CONSTRAINT check_status 
                                CHECK (is_active_status IN ('Y', 'N')),
 created_at         TIMESTAMP,
 modified_at        TIMESTAMP
);



CREATE TABLE cart_item
(
 cart_item_id   INTEGER DEFAULT seq_cart_item_cart_item_id.nextval PRIMARY KEY,
 session_id     INTEGER NOT NULL,
 product_id     INTEGER NOT NULL,
 quantity       INTEGER NOT NULL,
 created_at     TIMESTAMP,
 modified_at    TIMESTAMP,
 CONSTRAINT fk_product_id_tbl_cart_item FOREIGN KEY (product_id)
 REFERENCES product (product_id)
);



CREATE TABLE shopping_session
(
 session_id     INTEGER DEFAULT seq_shopping_session_session_id.nextval PRIMARY KEY,
 user_id        INTEGER NOT NULL,
 created_at     TIMESTAMP,
 modified_at    TIMESTAMP,
 CONSTRAINT fk_user_id_tbl_shopping_session FOREIGN KEY (user_id)
 REFERENCES store_users (user_id)
);



CREATE TABLE order_details 
(
 order_details_id   INTEGER DEFAULT seq_order_details_order_detail_id.nextval PRIMARY KEY,
 user_id            INTEGER NOT NULL,
 total              NUMBER,
 payment_id         INTEGER NOT NULL,
 shipping_method    VARCHAR2(6) NOT NULL CONSTRAINT check_shipping_method CHECK(shipping_method IN ('DPD', 'DHL', 'UPS', 'Inpost')),
 delivery_adress_id INTEGER NOT NULL,
 created_at         TIMESTAMP,
 modified_at        TIMESTAMP,
 CONSTRAINT fk_user_id_tbl_order_details FOREIGN KEY (user_id)
 REFERENCES store_users (user_id)
);



CREATE TABLE order_items
(
 order_items_id     INTEGER DEFAULT seq_order_items_order_items_id.nextval PRIMARY KEY,
 order_details_id   INTEGER NOT NULL,
 product_id         INTEGER NOT NULL,
 created_at         TIMESTAMP,
 modified_at        TIMESTAMP,
 CONSTRAINT fk_order_details_id_tbl_order_items FOREIGN KEY (order_details_id)
 REFERENCES order_details (order_details_id),
 CONSTRAINT fk_product_id_tbl_order_items FOREIGN KEY (product_id)
 REFERENCES product (product_id)
);



CREATE TABLE payment_details
(
 payment_details_id     INTEGER DEFAULT seq_payment_details_payment_details_id.nextval 
                        PRIMARY KEY,
 order_id               INTEGER NOT NULL,
 amount                 INTEGER NOT NULL,
 provider               VARCHAR2(100) NULL,
 payment_status         VARCHAR2(10) CONSTRAINT check_payment_status CHECK
                                     (payment_status IN ('PROCESSED', 'PENDING', 'FAILURE')),
 created_at             TIMESTAMP,
 modified_at            TIMESTAMP,
 CONSTRAINT fk_order_id_tbl_payment_details FOREIGN KEY (order_id)
 REFERENCES order_details (order_details_id)
);



CREATE TABLE product_category
(
 category_id    INTEGER PRIMARY KEY,
 category_name  VARCHAR2(100) NOT NULL,
 category_desc  VARCHAR2(200) NULL
);


ALTER TABLE product ADD
CONSTRAINT fk_category_id_tbl_product FOREIGN KEY (category_id)
REFERENCES product_category (category_id);

ALTER TABLE product ADD
CONSTRAINT fk_discount_id_tbl_product FOREIGN KEY (discount_id)
REFERENCES discount (discount_id);

ALTER TABLE cart_item ADD
CONSTRAINT fk_session_id_tbl_cart_item FOREIGN KEY (session_id)
REFERENCES shopping_session (session_id);

ALTER TABLE order_details ADD
CONSTRAINT fk_payment_id_tbl_order_details FOREIGN KEY (payment_id)
REFERENCES payment_details (payment_details_id);


CREATE TABLE employees
(
 employee_id    INTEGER DEFAULT seq_employees_employee_id.nextval PRIMARY KEY,
 first_name     VARCHAR2(80) NOT NULL,
 middle_name    VARCHAR2(80) NULL,
 last_name      VARCHAR2(80) NOT NULL,
 date_of_birth  DATE NOT NULL,
 department_id  INTEGER NULL,
 hire_date      DATE NOT NULL,
 salary         NUMBER,
 phone_number   VARCHAR2(30) UNIQUE NULL 
                                    CONSTRAINT check_phone_number_employees 
                                    CHECK (REGEXP_LIKE(phone_number, '^\d{3}.\d{3}.\d{4}$')),
 email          VARCHAR2(80) UNIQUE NULL,
 ssn_number     VARCHAR2(11 CHAR),
 manager_id     INTEGER
);


CREATE TABLE departments
(
 department_id      INTEGER DEFAULT seq_departments_department_id.nextval PRIMARY KEY,
 department_name    VARCHAR2(100) NULL,
 manager_id         INTEGER NOT NULL,
 department_desc    VARCHAR2(200) NULL,
 CONSTRAINT fk_manager_id_tbl_departments FOREIGN KEY (manager_id)
 REFERENCES employees (employee_id)
);



CREATE TABLE adresses 
(
 adress_id      INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
 line_1         VARCHAR2(100) NOT NULL,
 line_2         VARCHAR2(100),
 city           VARCHAR2(80) NOT NULL,
 zip_code       VARCHAR2(20) NOT NULL,
 province       VARCHAR2(80),
 country        VARCHAR2(80) NOT NULL
);


CREATE TABLE employees_archive
(
 event_date		    DATE,
 event_type 	    VARCHAR2(20 BYTE),
 user_name 			VARCHAR2(20 BYTE),
 old_employee_id    INTEGER,
 old_first_name     VARCHAR2(80),
 old_middle_name    VARCHAR2(80),
 old_last_name      VARCHAR2(80),
 old_date_of_birth  DATE,
 old_department_id  INTEGER,
 old_hire_date      DATE,
 old_salary         NUMBER,
 old_phone_number   VARCHAR2(30),
 old_email          VARCHAR2(80),
 old_ssn_number     VARCHAR2(11 CHAR),
 old_manager_id     INTEGER,
 new_employee_id    INTEGER,
 new_first_name     VARCHAR2(80),
 new_middle_name    VARCHAR2(80),
 new_last_name      VARCHAR2(80),
 new_date_of_birth  DATE,
 new_department_id  INTEGER,
 new_hire_date      DATE,
 new_salary         NUMBER,
 new_phone_number   VARCHAR2(30),
 new_email          VARCHAR2(80),
 new_ssn_number     VARCHAR2(11 CHAR),
 new_manager_id     INTEGER
);



ALTER TABLE employees 
ADD  CONSTRAINT fk_department_id_tbl_employees FOREIGN KEY (department_id)
REFERENCES departments (department_id);

ALTER TABLE employees 
ADD  CONSTRAINT fk_manager_id_tbl_employees FOREIGN KEY (manager_id)
REFERENCES employees (employee_id);

ALTER TABLE order_details 
ADD  CONSTRAINT fk_delivery_adress_id_tbl_order_details FOREIGN KEY (delivery_adress_id)
REFERENCES adresses (adress_id);


/*******************************************************************************
   insert rows
********************************************************************************/

-- SET DEFINE OFF;

-- ALTER TABLE employees DISABLE CONSTRAINT FK_DEPARTMENT_ID_TBL_EMPLOYEES;
-- ALTER TABLE departments DISABLE CONSTRAINT FK_MANAGER_ID_TBL_DEPARTMENTS;

-- -- departments table

-- COMMIT;

-- -- employees table

-- DECLARE
--    random_dob DATE = CURRENT_DATE();
--    random_hiredate DATE = CURRENT_DATE();
--    random_email VARCHAR(255);
-- BEGIN
--    FOR loop_counter IN 1..5
--    LOOP
--       DBMS_OUTPUT.PUT_LINE(loop_counter);

--       random_dob := DBMS_RANDOM.VALUE(TO_CHAR(DATE '2000-01-01','J') ,TO_CHAR(CURRENT_DATE));
--       random_hiredate := DBMS_RANDOM.VALUE(TO_CHAR(DATE '2000-01-01','J') ,TO_CHAR(CURRENT_DATE()));
--       random_email := DBMS_RANDOM.STRING('A', 6) || "@" || DBMS_RANDOM.STRING('A', 6) || "." || "com";

--       INSERT INTO employees (first_name, middle_name, last_name,date_of_birth,department_id,hire_date,salary,phone_number,email,ssn_number,manager_id) values (DBMS_RANDOM.STRING('I', 6), null, 'Andries',
--                                                                                                                                        random_date, null,
--                                                                                                                                        to_date('25/12/19 00:00:00','DD/MM/RR HH24:MI:SS'),
--                                                                                                                                        DBMS_RANDOM.VALUE(4750000, 68000000), '279 266 4806',
--                                                                                                                                        random_email,
--                                                                                                                                        '096996969',
--                                                                                                                                        null);
--    END LOOP;
--    COMMIT; -- No Commit inside Loop
-- EXCEPTION
--    WHEN VALUE_ERROR THEN
--       DBMS_OUTPUT.PUT_LINE ('INSERTION of Data caused VALUE_ERROR');
-- END;


-- ALTER TABLE employees ENABLE CONSTRAINT FK_DEPARTMENT_ID_TBL_EMPLOYEES;
-- ALTER TABLE departments ENABLE CONSTRAINT FK_MANAGER_ID_TBL_DEPARTMENTS;

-- COMMIT;

-- -- Adresses table

-- BEGIN
--    FOR loop_counter IN 1..5
--    LOOP
--       DBMS_OUTPUT.PUT_LINE(loop_counter);

--       random_date :=  DBMS_RANDOM.VALUE(TO_CHAR(DATE '1980-01-01','J') ,TO_CHAR(CURRENT_DATE));

--       INSERT INTO adresses (line_1, line_2, city, zip_code, province, country) values (DBMS_RANDOM.STRING('A', 32), null, DBMS_RANDOM.STRING('A', 16),
--                                                                                  DBMS_RANDOM.STRING('A', 8), DBMS_RANDOM.STRING('A', 16), DBMS_RANDOM.STRING('A', 6));
--    END LOOP;
--    COMMIT; -- No Commit inside Loop
-- EXCEPTION
--    WHEN VALUE_ERROR THEN
--       DBMS_OUTPUT.PUT_LINE ('INSERTION of Data caused VALUE_ERROR');
-- END;





/***
* W O R K     I N     P R O G R E E S
***/

-- DECLARE
-- 	random_string VARCHAR(255);
-- BEGIN
-- 	random_string := DBMS_RANDOM.STRING('A', 6);
-- 	DBMS_OUTPUT.PUT_LINE(random_string);
-- END;

-- CREATE SEQUENCE seq_store_users_id
-- START WITH 1
-- INCREMENT BY 1
-- CACHE 1000;

-- CREATE TABLE store_users (
-- 	user_id INTEGER DEFAULT seq_store_users_id.nextval PRIMARY KEY,
--  	first_name VARCHAR2(80) NOT NULL,
-- 	phone_number VARCHAR2(30) UNIQUE NOT NULL 
--                         CONSTRAINT check_phone_number_store_users 
--                         CHECK (REGEXP_LIKE(phone_number, '^\d{1-3}.\d{1-4}(.\d+})?$'))
-- )

-- DECLARE
--    random_name VARCHAR2(80);
-- 	random_segment_phonenumber VARCHAR2(3);
-- BEGIN
--    FOR loop_counter IN 1..6
--    LOOP
--       DBMS_OUTPUT.PUT_LINE(loop_counter);

-- 	  random_name := DBMS_RANDOM.STRING('A', 8);
-- 	  random_segment_phonenumber := DBMS_RANDOM.STRING('X', 3);

--       INSERT INTO store_users (first_name, phone_number) values (random_name, random_segment_phonenumber || "." || random_segment_phonenumber);

--    END LOOP;
--    COMMIT; -- No Commit inside Loop
-- EXCEPTION
--    WHEN VALUE_ERROR THEN
--       DBMS_OUTPUT.PUT_LINE ('INSERTION of Data caused VALUE_ERROR');
-- END;

-- CREATE VIEW all_user_first_name_and_phone_number(first_name, phone_number) AS
-- SELECT first_name, phone_number
-- FROM store_users;

SELECT * FROM all_user_first_name_and_phone_number;