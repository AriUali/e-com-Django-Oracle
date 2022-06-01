DECLARE 
CURSOR price_neew(new_p_price  store_product.price % TYPE) is
SELECT * FROM store_product WHERE price <= new_p_price FOR UPDATE OF price NOWAIT;
BEGIN FOR v_employee IN price_neew(20)
LOOP
insert into 
new_price
(id, title,author,DESCRIPTION,IMAGE,   slug,
PRICE, IN_STOCK, IS_ACTIVE, CREATED, UPDATED, CATEGORY_ID, created_by_id)
values
(v_employee.id, v_employee.title, v_employee.author, v_employee.description, v_employee.image,
v_employee.slug, v_employee.price*1.25, v_employee.in_stock, v_employee.is_active, sysdate, sysdate, v_employee.category_id, v_employee.created_by_id);
END LOOP;
END;