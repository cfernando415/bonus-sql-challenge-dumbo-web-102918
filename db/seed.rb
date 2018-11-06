# Parse the CSV and seed the database here! Run 'ruby db/seed' to execute this code.
require 'CSV'
require 'pry'
require_relative '../config/environment.rb'

csv_arr = CSV.read("./daily_show_guests.csv")
# counter = 0
# sql = <<-SQL
#   INSERT INTO csvdb(year, occupation, show, groups, guest_list)
#   VALUES (?, ?, ?, ?, ?)
# SQL
#
#ONLY RUN ONCE BECAUSE IT WILL CREATE DUPLICATE RECORDS!!!!!!!
# csv_arr.each do |row|
#   if counter > 0
#     # binding.pry
#     DB[:conn].execute(sql, row[0], row[1], row[2], row[3], row[4])
#   end
#   counter += 1
# end
