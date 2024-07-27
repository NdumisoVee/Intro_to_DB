import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="NduM1s0V!l@kazi!45",
    database="alx_book_store"
)
mycursor = mydb.cursor()

mycursor.execute("""
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    --FOREIGN KEY (author_id) REFERENCES Authors(author_id)
)
""")

mycursor.execute("""
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(130) NOT NULL,
)
""")

mycursor.execute("""
CREATE TABLE Customers (
    customer_id AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215) NOT NULL UNIQUE,
    address TEXT
    )
""")

mycursor.execute("""
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    --FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)
""")

mycursor.execute("""
CREATE TABLE Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE NOT NULL,
    --FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    --FOREIGN KEY (book_id) REFERENCES Books(book_id)
)
""")

