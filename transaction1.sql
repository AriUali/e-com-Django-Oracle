SET TRANSACTION NAME 'update';

insert into store_category (id, name, slug)
values
(8, 'default', 'default');

SAVEPOINT sav1;

 insert into store_product(id, title,author,DESCRIPTION,IMAGE,   slug,
PRICE, IN_STOCK, IS_ACTIVE, CREATED, UPDATED, CATEGORY_ID, created_by_id)
 values
(11, 'default', 'admin', 'default', 'images/def.jpeg',
'default', 10.99, 1, 1, sysdate, sysdate, :new.id, 1);
END;

ROLLBACK TO sav1;

update store_category set name = 'new_name' where id = 8;


COMMIT;