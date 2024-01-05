/*******************************************************************************
   sample-database-online-store - Version 1.0

   Script: seed.sql
   Description: triggers to protect data integrity.
********************************************************************************/

CREATE OR REPLACE TRIGGER trigger_archiving_employees
AFTER INSERT OR UPDATE OR DELETE
ON employees
FOR EACH ROW
DECLARE