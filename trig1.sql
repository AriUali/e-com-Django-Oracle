CREATE OR REPLACE TRIGGER TRIGGER1 
AFTER  INSERT ON store_category FOR EACH ROW 
BEGIN
 insert into store_product(id, title,author,DESCRIPTION,IMAGE,   slug,
PRICE, IN_STOCK, IS_ACTIVE, CREATED, UPDATED, CATEGORY_ID, created_by_id)
 values
(11, 'default', 'admin', 'default', 'images/def.jpeg',
'default', 10.99, 1, 1, sysdate, sysdate, :new.id, 1);
END;

insert into store_category (id, name, slug)
values
(3, 'new_category', 'new_category');