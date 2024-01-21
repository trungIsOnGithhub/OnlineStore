/*******************************************************************************
   Create index on multiple table if not exist
********************************************************************************/

/**
    Oracle by default enforces aUNIQUE key or PRIMARY KEY integrity constraint by creating a unique index on the unique key or primary key
**/

CREATE INDEX product_by_supplier_id_idx
ON product (supplier_id);