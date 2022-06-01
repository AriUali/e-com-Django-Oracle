DECLARE 
   c_username account_userbase.user_name%type; 
   c_email account_userbase.email%type; 
   c_password account_userbase.password%type; 
   CURSOR c_customers is 
      SELECT user_name, email, password FROM account_userbase; 
BEGIN 
   OPEN c_customers; 
   LOOP 
   FETCH c_customers into c_username, c_email, c_password; 
      EXIT WHEN c_customers%notfound; 
      dbms_output.put_line(c_username || ' --------- ' || c_email || '---------- ' || c_password); 
   END LOOP; 
   CLOSE c_customers; 
END; 