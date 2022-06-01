create or replace procedure count_ctrs(
    p_ctr in ACCOUNT_USERBASE.country%type,
    p_ctr_num out number) 
  as
begin
    select count(country) 
    into p_ctr_num  
    from ACCOUNT_USERBASE 
where p_ctr=country;
exception 
    when no_data_found
      then dbms_output.put_line('no data');
  end;


declare
v_ctr ACCOUNT_USERBASE.country%type;
begin
    count_ctrs('KZ', v_ctr);
    DBMS_OUTPUT.PUT_LINE(v_ctr);
end;