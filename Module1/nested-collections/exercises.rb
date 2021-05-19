# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Working with Nested Collections in Ruby
# Highlights:
 # - You can nest hashes into arrays and also the other way around
 # - You can modify the content of any of the nested collections
 # - You can remove elements from the collections
  
# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/nested-collections
# 2. Run the file
  # ruby exercise.rb

# You can use the method "puts" to output the result to the console
# puts a_variable
# puts ["Luke", "Yoda"]

puts "--\n\n"
# Exercise 1:
puts "1) "
# Sum all the elements from a nested array
# HINT: Try using map and reduce
def sum_nested_collection
  nested_numbers = [[1,2,3], [5,6,7,5], [9,10,13,6], [1]]

  nested_numbers.inject { |sum, n| ((sum.class == Array) ? sum.reduce(:+) : sum) + n.reduce(:+) }
end

puts sum_nested_collection

puts "--\n\n"

# Exercise 2:
puts  "2) "
# Given the following data collections
countries = {
  "United States" => "US",
  "Mexico" => "MX",
  "Canada" => "CA",
  "Rusia" => "RU",
  "France" => "FR"
}

capitals = {
  "US" => "Washington DC",
  "MX" => "CDMX",
  "CA" => "Ottawa",
  "RU" => "Moscow",
  "FR" => "Paris"
}

# 1. Create a method that receives a country name and return the abbreviation
puts " 2.1) "

  def country_to_abbreviation(countries, country)
    countries[country]
  end

  puts "  " << country_to_abbreviation(countries, "Rusia")
# 2. Create a method that receives a country and outputs its capital
puts " 2.2) "

  def capital_country(countries, capitals, country)
    capitals[countries[country]]
  end

  puts "  " << capital_country(countries, capitals, "Rusia")
# 3. Create a method that receives a capital and return the country name
puts " 2.3) "

  def country_capital(capitals, countries, capital)
    capital_abbreviated = capitals.find { |key, value| value == capital }[0]
    countries.find { |key, value| value == capital_abbreviated }[0]
  end

  puts "  " + country_capital(capitals, countries, 'Paris')
# 4. Create a method to create a hash that looks like this:
puts " 2.4) "
# {
#   "United States" => { abbreviation: "US", capital: "Washington DC" },
#   "Mexico" => { abbreviation: "MX", capital: "CDMX" },
#   "Canada" => { abbreviation: "CA", capital: "Ottawa" }
#   "Rusia" => { abbreviation: "RU", capital: "Moscow" },
#   "France" => { abbreviation: "FR", capital: "Paris" },
# }

  def country_description(countries, capitals)
    descriptive_country = Hash.new

    countries.each do |key, value|
      descriptive_country[key] = Hash.new
      descriptive_country[key][:abbreviation] = value
      descriptive_country[key][:capital] = capitals[value]
    end

    descriptive_country
  end

  puts "  #{country_description(countries, capitals)}"