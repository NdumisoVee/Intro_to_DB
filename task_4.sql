import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="NduM1s0V!l@kazi!45",
    database="alx_book_store"
)

mycursor.execute("""
SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, COLUMN_DEFAULT, EXTRA
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store'
AND TABLE_NAME = 'books'
""")
