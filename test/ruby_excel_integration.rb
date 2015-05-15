# First make sure the code can access the gem
require 'spreadsheet'
# Set encoding UTF-8 preferred
Spreadsheet.client_encoding = 'UTF-8'
# Create a workbook object by utilizing gem to open an existing spreadsheet in a given path
my_book = Spreadsheet.open '/Users/yelisettim/Documents/ganesh_workbook.xls'
# pin point to a specific worksheet within this workbook
my_sheet = my_book.worksheet 'ganesh_sheet'
# Get all values for row 1 (zero based) in other words the first data row after the header row
row = my_sheet.row(1)
# Write values in the row stored as an array onto console
puts(row[0])
puts(row[1])
# the output should look like this (without the pound sign obviously)
# ganesh
# mahesh


# The excel sheet in this case can look something like this
# Column 1  Column2
# ganesh    mahesh



