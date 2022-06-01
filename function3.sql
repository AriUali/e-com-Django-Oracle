CREATE OR REPLACE FUNCTION totalCategory  
RETURN number IS  
   total number(2) := 0;  
BEGIN  
   SELECT count(*) into total  
   FROM store_category;  
    RETURN total;  
END;  

DECLARE  
   c number(2);  
BEGIN  
   c := totalCategory();  
   dbms_output.put_line('Total number of Categories: ' || c);  
END;  