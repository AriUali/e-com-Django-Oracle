CREATE OR REPLACE PROCEDURE delete_proc IS 
BEGIN 
    DELETE FROM store_product 
        WHERE IS_ACTIVE = 0; 
    UPDATE store_product 
        SET IS_ACTIVE = 0 
        WHERE IS_ACTIVE = 1; 
END delete_proc;  

execute delete_proc();