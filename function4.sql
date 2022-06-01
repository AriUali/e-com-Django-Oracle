CREATE OR REPLACE Function PrintPostcode
   ( check_name IN varchar2 )
   RETURN number
IS
   cnumber number;
 
   cursor c1 is
   SELECT phone_number
     FROM account_userbase
     WHERE user_name = check_name;
 
BEGIN
   open c1;
   fetch c1 into cnumber;
 
   if c1%notfound then
      cnumber := 00000;
   end if;
   close c1;
RETURN cnumber;
 
EXCEPTION	 	 
WHEN OTHERS THEN	 	 
 raise_application_error(-20001,'An error was encountered - '||SQLCODE||' -ERROR- '||SQLERRM);
END;

SELECT first_name, PrintPostcode(user_name) AS postcode
  FROM account_userbase  WHERE country = 'FR';