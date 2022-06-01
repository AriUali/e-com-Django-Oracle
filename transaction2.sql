SET TRANSACTION NAME 'update2';

update store_category set name = 'dbms' where id = 8;
SAVEPOINT after_update_sal;

update store_category set name = 'dbmsoutput' where id = 4;
ROLLBACK TO SAVEPOINT after_update_sal;

 insert into store_product(id, title,author,DESCRIPTION,IMAGE,   slug,
PRICE, IN_STOCK, IS_ACTIVE, CREATED, UPDATED, CATEGORY_ID, created_by_id)
 values
(11, 'default', 'admin', 'default', 'images/def.jpeg',
'default', 10.99, 1, 1, sysdate, sysdate, :new.id, 1);

SAVEPOINT after_insert_sal;

 commit;