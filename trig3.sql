CREATE OR REPLACE TRIGGER TRIGGER3
AFTER  update of  name ON store_category FOR EACH ROW 
BEGIN 
update store_product set slug = :new.name where id = :old.id;
END;

update store_category set name = 'new_name' where id = 4;