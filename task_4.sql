import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="NduM1s0V!l@kazi!45",
    database="alx_book_store"
)

mycursor.execute("SELECT * Books")
myresult = mycursor.fetchall()

for row in myresult:
  print(row)