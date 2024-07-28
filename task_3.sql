import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="NduM1s0V!l@kazi!45",
)

mycursor = mydb.cursor()
mycursor.execute("USE alx_book_store;")
mycursor.execute("SHOW TABLES")
for table in tables:
    print(table[0])