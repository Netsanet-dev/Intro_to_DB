import mysql.connector


mydb = mysql.connector.connect(
    host = 'localhost',
    user = 'Netsanet',
    password = '248747Netsi!',
)

mycursor = mydb.cursor()
try:
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
except mysql.connector.Error:
    print("Database Not created.")
else:
    print(f"Database 'alx_book_store' created successfully!")


mydb.close()