declare cursor inform is
    select email, user_name from account_userbase
    where last_login >= '01-12-2021' 
    order by last_login;

    v_email account_userbase.email%TYPE;
    v_user_name account_userbase.user_name%TYPE;
    begin
    OPEN inform;
    LOOP
        FETCH inform INTO v_email, v_user_name;
        EXIT WHEN inform%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('User name: ' || v_user_name || ' Your email - ' || v_email);
    END LOOP;
    CLOSE inform;
end;