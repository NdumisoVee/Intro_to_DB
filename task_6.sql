import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="NduM1s0V!l@kazi!45",
    database="alx_book_store"
)
mycursor = mydb.cursor()

sql = "INSERT Customers (customer_id, customer_name, email, address) VALUES (%d, %s, %s, %s)"
val = [
("2", "Blessing Malik", "bmalik@sandtech.com", "124 Happimess Ave."),
("3", "Obed Ehoneah", "eobed@sandtech.com", "125 Happimess Ave."),
("4", "Nehemial Kamolu", "nkamolu@sandtech.com", "126 Happimess Ave.")
]

mycursor.executemany(sql, val)
mydb.commit()