import os

db_user = os.environ.get('db_user')
db_password = os.environ.get('db_password')

current_dir = os.getcwd()
print(current_dir)

os.chdir('/Users/Leong/Desktop/visual studio')

print(os.listdir())
print (db_user)
print(db_password)
print(os.environ)