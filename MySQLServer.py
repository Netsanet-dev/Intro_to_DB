import mysql.connector

DB_NAME = 'alx_book_store'

mydb = mysql.connector.connect(
    host = 'localhost',
    user = 'Netsanet',
    password = '248747Netsi!',
)

mycursor = mydb.cursor()
mycursor.execute(f"CREATE DATABASE IF NOT EXISTS {DB_NAME}")
print(mycursor)



mydb.close()