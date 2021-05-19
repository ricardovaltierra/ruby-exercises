require 'json'

# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Working with Files in Ruby
# Highlights:
  # - You can use the open method from the File class, to read or create files
  # - There are a bunch of modes to open a file:
  #   r - Read only. The file must exist.
  #   w - Create an empty file for writing.
  #   a - Append to a file.The file is created if it does not exist.
  #   r+ - Open a file for update both reading and writing. The file must exist.
  #   w+ - Create an empty file for both reading and writing.
  #   a+ - Open a file for reading and appending. The file is created if it does not exist.

  
# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/inheritance
# 2. Run the file
  # ruby exercise.rb

# You can use the method "puts" to output the result to the console
# puts a_variable
# puts { name: "Alice" }

puts "--\n\n"

# Exercise 1:
puts "1) \n\n"
# Given the file avenger_quotes.txt
# 1. Create a method to read the file
# 2. Read each line and create a hash for each superhero to save the quotes:
#   2.1 { name: "Tony Stark", quotes: [...] }
# 3. Create a json file with the structure generated above. One file per character. Checkout the json library - https://ruby-doc.org/stdlib-3.0.1/libdoc/json/rdoc/JSON.html
# 4. Read each json file, and create a new txt file to add the avengers quotes in uppercase, just like the original file, but in caps.

# 1 Create a method to read the file
def file_reader(filename)
  file = File.open(filename, 'r')
  file.readlines
end

file_lines =  file_reader "Module1/files/avenger_quotes.txt"

# puts file_lines

puts "--\n\n"

# 2. Read each line and create a hash for each superhero to save the quotes:

heroe_lines = Hash.new

file_lines.each do |line|
  next if line.length <= 1
  heore_line = line.split ':'
  if heroe_lines[heore_line[0]].nil?
    heroe_lines[heore_line[0]] = Array.new
    heroe_lines[heore_line[0]] << heore_line[1]
  else 
    heroe_lines[heore_line[0]] << heore_line[1]
  end
end

heroe_lines.each do |heroe, lines|
  puts "#{heroe.upcase} has the following lines in the movie:"
  lines.each_with_index { |line, index| puts "  #{index + 1} - #{line}"}
  puts "--\n\n"
end

# 3. Create a json file with the structure generated above. One file per character. 

heroe_lines.each do |heroe, lines|
  file_content = { "#{heroe}": lines }
  file = File.open("Module1/files/#{heroe}_lines.json", "w")
  file.write(file_content.to_json)
  file.close
end

puts "--\n\n"

# 4. Read each json file, and create a new txt file to add the avengers quotes in uppercase, just like the original file, but in caps.

heroes = heroe_lines.map { |heroe, lines| heroe }

json_read = heroes.map do |heroe|
  file = File.open("Module1/files/#{heroe}_lines.json", "r")
  json = file.readlines
  json_parsed = JSON.parse "#{json}"
  json_parsed = JSON.parse json_parsed[0]
end

file = File.open("Module1/files/avenger_quotes_upcase.txt", 'w')
file.write
file.close

json_read.each do |line| 
  lines_array = line.values[0].map { |heroe_line| "\n #{line.keys[0]}: #{heroe_line.upcase}" }
  lines_array.each do |heroe_line|
    file = File.open("Module1/files/avenger_quotes_upcase.txt", 'a')
    file.write heroe_line
    file.close
  end
end