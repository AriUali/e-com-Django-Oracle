CREATE OR REPLACE TRIGGER TRIGGER2
AFTER  update of  is_active  ON store_product FOR EACH ROW 
BEGIN 
 insert into not_active (id, title ,author,DESCRIPTION,IMAGE,   slug,
PRICE, IN_STOCK, IS_ACTIVE, CREATED, UPDATED, CATEGORY_ID, created_by_id)
 values
(:old.id, :old.title, :old.author, :old.DESCRIPTION, :old.IMAGE,
:old.slug, :old.PRICE, :old.IN_STOCK, :old.IS_ACTIVE, :old.CREATED, :old.UPDATED, :old.CATEGORY_ID, :old.created_by_id);
END;

UPDATE store_product  SET is_active = 0  WHERE id = 3;