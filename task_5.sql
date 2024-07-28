import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="NduM1s0V!l@kazi!45",
    database="alx_book_store"
)
mycursor = mydb.cursor()

sql = "INSERT INTO customer (customer_id, customer_name, email, address) VALUES (%d, %s, %s, %s)"
val = ("1", "Cole Baidoo", "cbaidoo@sandtech.com", "123 Happimess Ave".)
mycursor.execute(sql, val)
mydb.commit()