import mysql.connector

DB_NAME = 'alx_book_store'

mydb = mysql.connector.connect(
    host = 'localhost',
    user = 'Netsanet',
    password = '248747Netsi!',
)

mycursor = mydb.cursor()
try:
    mycursor.execute("CREATE DATABASE IF NOT EXISTS {}".format(DB_NAME))
except:
    print("Database Not created.")
else:
    print(f"Database '{DB_NAME}' created successfully!")


mydb.close()