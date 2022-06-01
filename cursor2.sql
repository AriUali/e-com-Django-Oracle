DECLARE
CURSOR cur_emp IS 
select postcode , address_line_1, address_line_2 from account_userbase  where id <40;
v_p_postcode account_userbase.postcode%TYPE;
v_p_adline1 account_userbase.address_line_1%TYPE;
v_p_adline2 account_userbase.address_line_2%TYPE;
CURSOR cur_depts IS
SELECT town_city, country FROM account_userbase where id <40;
v_town_city account_userbase.town_city%TYPE;
v_country account_userbase.country%TYPE;
BEGIN
OPEN cur_depts;
OPEN cur_emp;
LOOP
FETCH cur_depts INTO v_town_city, v_country;
FETCH cur_emp INTO v_p_postcode, v_p_adline1,v_p_adline2 ;
EXIT WHEN cur_depts%NOTFOUND;
EXIT WHEN cur_emp%NOTFOUND;
DBMS_OUTPUT.PUT_LINE(v_town_city||'-'||v_country||': '||v_p_postcode||' '||v_p_adline1||'- '||v_p_adline2);
END LOOP;
CLOSE cur_depts;
close cur_emp;
END;