# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Working with Hash in Ruby
# Highlights:
 # - You can join join hashes using the "merge" method
 # - You can modify the content of a hash
 # - You can remove elements from a hash 
  
# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/hash
# 2. Run the file
  # ruby exercise.rb

# You can use the method "puts" to output the result to the console
# puts a_variable
# puts { name: "Alice" }

# Exercise 1:
# Use a method to get the keys of a hash
heroe = {
  name: "Hulk",
  real_name: "Bruce Banner",
  powers: ["Smashes", "Strength", "Bullet proof"]
}
p "1) #{heroe.keys}"
#=> [:name, :real_name, :powers]

# Exercise 2:
# Use a method to remove the real_name key from the hash
heroe = {
  name: "Hulk",
  real_name: "Bruce Banner",
  powers: ["Smashes", "Strength", "Bullet proof"]
}
p "2) #{heroe.delete(:real_name)}"
#=> "Bruce Banner"

# Exercise 3:
# Add a power to the heroe(you can change it if you like)
heroe = {
  name: "Hulk",
  real_name: "Bruce Banner",
  powers: ["Smashes", "Strength", "Bullet proof"]
}
p "3) #{heroe[:powers] << "Is green"}"
#=> ["Smashes", "Strength", "Bullet proof", "Is green"]

# Exercise 4:
# Join the two hashes so Hulk has the right set of powers
heroe = {
  name: "Hulk",
  real_name: "Bruce Banner",
  powers: ["Spider sense", "Web usage", "Crawl walls"]
}

real_powers = {
  powers: ["Smashes", "Strength", "Bullet proof"]
}

p "4) #{heroe.merge real_powers}"
#=> { name: "Hulk", real_name: "Bruce Banner", powers: ["Smashes", "Strength", "Bullet proof"]}

# Exercise 5:
# Create a Hash with ths states form Mexico, use an abbreviation as key and the full name as the value
# Ex. Nuevo Leon is the full name and NL would be the key
states = { 
  AG: 	'AGUASCALIENTES',
  BN: 	'BAJA CALIFORNIA NORTE',
  BS: 	'BAJA CALIFORNIA SUR',
  CH: 	'COAHUILA',
  CI: 	'CHIHUAHUA',
  CL: 	'COLIMA',
  CP: 	'CAMPECHE',
  CS: 	'CHIAPAS',
  DF: 	'DISTRICTO FEDERAL',
  DG: 	'DURANGO',
  GE: 	'GUERRERO',
  GJ: 	'GUANAJUATO',
  HD: 	'HIDALGO',
  JA: 	'JALISCO',
  MC: 	'MICHOACAN',
  MR: 	'MORELOS',
  MX: 	'MEXICO',
  NA: 	'NAYARIT',
  NL: 	'NUEVO LEON',
  OA: 	'OAXACA',
  PU: 	'PUEBLA',
  QE: 	'QUERETARO',
  QI: 	'QUINTANA ROO',
  SI: 	'SINALOA',
  SL: 	'SAN LUIS POTOSI',
  SO: 	'SONORA',
  TA: 	'TAMAULIPAS',
  TB: 	'TABASCO',
  TL: 	'TLAXCALA',
  VC: 	'VERACRUZ',
  YU: 	'YUCATAN',
  ZA: 	'ZACATECAS'
}
p "5) #{states}"

# Exercise 6:
# Describe yourself as a Hash, some ideas would be, name, age, hobbies, email, gender, etc
# Try to use different data types as the values, such as strings, arrays, floats
myself = {
  first_name: "Ricardo",
  last_name: "Valtierra",
  age: 30,
  hobbies: ["rest", "eat", "sleep"],
  email: 'ricardo_valtierra@outlook.com',
  gender: 'male',
  country: 'Mexico',
  state: states[:GJ],
  city: 'Leon'
}
p "6) #{myself}"

# Exercise 7:
# The hash below stores data regarding what is on my fridge
fruits = {
  apple: 3,
  watermelon: 1,
  orange: 5
}
p "7) "
# Please print with a string following the next format:
# There are 3 apples on the fridge
p "There are #{fruits[:apple]} apples on the fridge"
# My only 1 watermelon takes all the space on my fridge =(
p "My only #{fruits[:watermelon]} watermelon takes all the space on my fridge =("
# How much juice would I get from 5 oranges?
p "How much juice would I get from #{fruits[:orange]} oranges?"


# Exercise 8:
# Grab the hash created back on exercise 5, and get the name for all the states
p "8) #{states.values}"
# => ["Aguascalientes", "Nuevo Leon"...]

# Exersice 9:

characters = {
  avengers: [
    { name: "Spider Man" },
    { name: "Captain Marvel" },
    { name: "Wanda" },
    { name: "Thor" }
  ],
  villains: [
    { name: "Loki" },
    { name: "Thanos" },
    { name: "Venom" },
    { name: "Ragnarok" }
  ]
}
p "9) "
# 1. List only the avengers names
characters[:avengers]
# p characters
# 2. Add a villain to the array, some ideas. Venom, Hela, Dormamu
characters[:villains] << { name: 'Hela'}
# p characters
# 3. Add another key with avengers without powers. War Machine, Iron Man, Hawkeye, Black Widow
characters[:avengers_without_powers] = [ 
  { name: "War Machine"}, 
  { name: "Iron Man"}, 
  { name: "Hawkeye"}, 
  { name: "Black Widow" }
]
# p characters
# 4. Reset the whole hash to store nothing
characters = {}
 p characters