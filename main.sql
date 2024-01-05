/*******************************************************************************
   sample-database-online-electronics-store - Version 1.0
   
   Script: online_electronics_store.sql
   Description: Creates and populates the database.
   DB Server: Oracle
   Author: Michal Wisniewski
   Assignment: Project to learn and practice designing a simple database
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