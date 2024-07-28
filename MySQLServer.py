import mysql.connector
from mysql.connector import Error


def create_database():
    try:
        mydb = mysql.connector.connect(
            host="localhost",
            user="root",
            password="NduM1s0V!l@kazi!45",
        )

        if mydb.is_connected():
            print("Connected to MySQL server")

            mycursor = mydb.cursor()

            create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"

            mycursor.execute(create_db_query)


            mydb.commit()

            print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as e:
        print(f"Error: {e}")

    finally:
        if mydb.is_connected():
            mycursor.close()
            mydb.close()
            print("MySQL connection is closed")
