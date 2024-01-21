/*******************************************************************************
   Create index on multiple table if not exist
********************************************************************************/

/**
    Oracle by default enforces aUNIQUE key or PRIMARY KEY integrity constraint by creating a unique index on the unique key or primary key
**/

CREATE INDEX product_by_supplier_id_idx
ON product (supplier_id);

CREATE INDEX product_by_price_idx
ON product (price);

CREATE UNIQUE INDEX employees_by_phone_number
ON employees (phone_number);

CREATE UNIQUE INDEX store_users_by_phone_number
ON store_users (phone_number);