require 'bundler'
Bundler.require

# Setup a DB connection here
require 'sqlite3'
DB ={:conn => SQLite3::Database.new("./db/bonus.db")}

###########
# ONLY RUN ONCE BECAUSE IT WILL GIVE YOU AN ERROR THAT THE DB IS ALREADY CREATED!!!
# schema = "CREATE TABLE csvdb(id INTEGER PRIMARY KEY AUTOINCREMENT, year INTEGER, occupation TEXT, show TEXT, groups TEXT, guest_list TEXT);"
# DB.execute(schema)
