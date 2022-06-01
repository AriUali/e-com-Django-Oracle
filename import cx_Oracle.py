import cx_Oracle

dsn_tns = cx_Oracle.makedsn('localhost)', '1521', service_name='orcl)') # if needed, place an 'r' before any parameter in order to address special characters such as '\'.
connection = cx_Oracle.connect("system/system@localhost:1521/orclpdb") # if needed, place an 'r' before any parameter in order to address special characters such as '\'. For example, if your user name contains '\', you'll need to place 'r' before the user name: user=r'User Name'

c = connection.cursor()
c.execute('select * from battles')  
for row in c:
    print (row[0], '-', row[3])
    
    # this only shows the first two columns. To add an additional column you'll need to add , '-', row[2], etc.
#conn.close()

connection = cx_Oracle.connect("system", "orcl", "orcl") 

dsn_tns = cx_Oracle.makedsn('localhost', '1521', service_name='orclpdb')
conn = cx_Oracle.connect(user=r'system', password='orcl', dsn=dsn_tns)