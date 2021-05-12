require 'prime'

# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Introduction to each
# Highlights:
 # - #each works for hash and arrays
 # - Is it called an iterator and repeats as many elements as it contains
  
# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/each
# 2. Run the file
  # ruby exercise.rb

# You can use the method "puts" to output the result to the console
# puts a_variable
# puts "Alice"

# Exercise 1:
p "1) Given an array of anime characters:"
# Given an array of anime characters:
# 1. Print each name capitalized
# 2. Print each name reversed
# 3. Print each name uppercased
characters = ["goku", "deku", "eren", "vegeta", "saitama", "mikasa", "katara"]

p " 1.1) Print each name capitalized"

characters.each { |character| p character.capitalize }

p " 1.2) Print each name reversed"

characters.each { |character| p character.reverse }

p " 1.3) Print each name uppercase"

characters.each { |character| p character.upcase }

p "--"

# Exercise 2:
p "2) Given an array of anime characters:"
# Given an array of anime characters:
# 1. Create a new array with the names with less or equal than 4 letters
# 2. Create a new array with only the lenghts of the names
characters = ["goku", "deku", "eren", "vegeta", "saitama", "mikasa", "katara"]

p " 2.1) Create a new array with the names with less or equal than 4 letters"

names_with_size_less_than_4 = []

characters.each { |character| names_with_size_less_than_4 << character if character.size <= 4 }

p names_with_size_less_than_4

p " 2.2) Create a new array with only the lenghts of the names"

length_of_character_names = []

characters.each { |character| length_of_character_names << character.length }

p length_of_character_names

p "--"

# Exercise 3:
# Given an array of numbers:
p "3) Given an array of numbers:"
# 1. Substract the numbers from the array and get the total
# 2. Print only the numbers divisible by 3
# 3. Print the square number for each number
numbers = [67, 78, 68, 24, 15, 41, 58, 81, 33, 13]

p " 3.1) Substract the numbers from the array and get the total"

sum_numbers = 0

numbers.each { |number| sum_numbers += number }

p sum_numbers

p " 3.2) Print only the numbers divisible by 3"

divisible_by_3 = []

numbers.each { |number| divisible_by_3 << number if number % 3 == 0 }

p divisible_by_3

p " 3.3) Print the square number for each number"

numbers.each { |number| p number ** 2 }

p "--"
# Exercise 4:
# Given an array of numbers:
p "4) Given an array of numbers:"
# 1. Create a new array with only even numbers
# 2. Create a new array with only odd numbers
# 3. Create a new array with only prime numbers
numbers = [30, 8, 31, 40, 33, 69, 84, 9, 61, 97]

p " 4.1) Create a new array with only even numbers"

even_numbers = []

numbers.each { |number| even_numbers.push number if number % 2 == 0 }

p even_numbers

p " 4.2) Create a new array with only odd numbers"

odd_numbers = []

numbers.each { |number| odd_numbers.push number if number % 2 != 0 }

p odd_numbers

p " 4.3) Create a new array with only prime numbers"

prime_numbers = []

numbers.each { |number| prime_numbers.push number if Prime.prime? number }

p prime_numbers

p "--"
# Exercise 5:
# Given the following array:
p "5) Given the following array:"
# [["Goku", "37"] ["Deku", "16"], ["Eren", "19"], ["Vegeta", "48"], ["Saitama", "25"], ["Mikasa", "19"], ["Katara", "16"]]
# 1. Create an array of hashes with two keys, name and age. For example [{name: "Goku", age: 37}]
# 2. Store the age in the hash as an integer
# 4. Add an abilities element(array) to the original array, and add it to the hash. For example [["Goku", 37, ["Kaioken", "Kamekameha"]]]
# 6. Print the character profile matching the following format:
#  Goku is a 37 years old with and is able to Kaioken, Kamekameha
puts characters.inspect

p " 5.1) Create an array of hashes with two keys, name and age. For example [{name: \"Goku\", age: 37}]"

name_and_age_array = []

characters.each { |character| name_and_age_array << { name: character, age: rand(100) }}

p name_and_age_array

p " 5.2) Store the age in the hash as an integer"

name_and_age_array = []

characters.each { |character| name_and_age_array << { name: character, age: rand(100).to_i }}

p name_and_age_array

p " 5.4) Add an abilities element(array) to the original array, and add it to the hash. For example [[\"Goku\", 37, [\"Kaioken\", \"Kamekameha\"]]]"

characters_with_abilities = []

abilities_array = [["Kaioken", "Kamekameha"],
             ["Fly", "Spiderweb"],
             ["Werewolf", "Strength"],
             ["Superstrength", "Speed"],
             ["Smart", "Fly"],
             ["Speed", "Size"],
             ["Night Vision", "Strength"]]

name_and_age_array.each_with_index do |character, index|
  character[:abilities] = abilities_array[index]
  characters_with_abilities.push character
end

p characters_with_abilities

p "5.6) Print the character profile matching the following format:"
# p characters_with_abilities
characters_with_abilities.each do |character| 
  p "   #{character[:name]} is #{character[:age]} years old with abilities like #{character[:abilities].inspect.gsub(/[\"|\[|\]|\s]+/, '\'')}"
end