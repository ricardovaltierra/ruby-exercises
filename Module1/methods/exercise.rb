# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Working with Methods in Ruby
# Highlights:
 # - You can define methods anywhere on this file
 # - You can invoke methods anywhere on this file
 # - All method only have one return value
  
# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/methods
# 2. Run the file
  # ruby exercise.rb

# You can use the method "puts" to output the result to the console
# puts a_variable
# puts { name: "Alice" }

# Exercise 1:
p "1) "
# Create a method to transform US Dollars to MXN Pesos. 
#  Only receives one argument
def transform_us_to_mxn(dollars, current_value)
  dollars * current_value
end

CURRENT_VALUE = 21.01

puts transform_us_to_mxn 1000, CURRENT_VALUE

p "--"
# Exercise 2:
p "2) "
# Create a repeater method, that will receive two arguments:
#   1. the number of repetitions to print to the terminal
#   2. and the string to repeat
# HINT: You can use the `times` iterator viewed on flow-control lesson
def repeater(repetition = 1, string = "No string was given :(")
  repetition.times { p string }
end

repeater

repeater 5, "This is a given string 5 times"

p "--"
# Exercise 3:
p "3) "
# Write a script to assign your next halloween custom options.
# Follow the next set of rules:
# 1. Each person can only have 2 random customes. Customes are allowed to be repeated among each person
# 2. When the person is assigned with two customes, print it using a method which receives a block as an argument
#   2.1 Here is an example of the output:
#   Hi Ross Geller,
#   Happy Halloween, hope you enjoy Jason and La Llorona as your customes for this year
# 3. Save each output result on a file, using the method provided.
#
# HINT!
# rand(n) gives you a random number from 0 to n
# There is an array method named sample, you may want to check it out

# People array to take customes
PEOPLE = [
  { name: "Ross Geller" },
  { name: "Joey Tribiani" },
  { name: "Monica Geller" },
  { name: "Phoebe Buffay" },
  { name: "Rachel Green" },
  { name: "Chandler Bing" },
]

# Customes array for taking the samples
CUSTOMES = ["Freddy Krueger",
            "SpongeBob",
            "La Llorona",
            "Pikachu",
            "Jason",
            "It",
            "Mario Bros",
            "Darth Vader",
            "Captain Marvel",
            "Beetlejuice",
            "Catwoman",
            "Jedi Master"]

# file writing method given
def write_to(file_name, &block)
  file = File.new(file_name, "w")
  file.write "---\n"
  yield(file) if block_given?
  file.write "---"
  file.close
end

# method for retrieving customes sample array for each friend
def select_customes
  customes = []
  2.times { customes << CUSTOMES[rand(CUSTOMES.length)] }
  customes
end

# method for taking the output_lines and write them into a file named as the friend in turn
def file_output output_lines, friend
  # using 'write_to' method with given parameters
  write_to "#{friend}.txt" do |file|
    file.write output_lines[0]
    file.write output_lines[1]
  end
end

# method for taking the output_lines and print them in terminal
def print_output output_lines
  # printing the two lines on terminal
  puts output_lines[0]
  puts output_lines[1]
end

# main method for taking customes samples on each of the friends in the PEOPLE array, ussing them to fill
# the output_lines used to invoke 'file_output' and 'print_output'
def custom_assign(friend)
  
  customes = select_customes
  output_lines = [
    "Hi #{friend},", 
    "Happy Halloween, hope you enjoy #{customes[0]} and #{customes[1]} as your customes for this year"
  ]

  # output in terminal
  print_output output_lines

  # output in file
  file_output output_lines, friend
end

# invoking 'custom_assign' to full PEOPLE array
PEOPLE.each { |friend| custom_assign friend[:name] }

p "--"

# Exercise 4:
p "4) "
# Answer the following questions to the execution of the code below:
# What the end result of the method?
# What happens when the return key is present?

# Example 1
PI = 3.14

def calculate_circle_area(radius)
  PI * radius**2
end
# 4.1 PI * radius**2 => 78.5 with the given value

# def calculate_circle_area(radius)
#   area = PI * radius**2
#   return area
# end
# 4.1 area || PI * radius**2 => 78.5 with the given value
# 4.2 returns specifically area variable

# yes, this is empty
# def calculate_circle_area(radius)
# end
# 4.1 "" => Empty string

# def calculate_circle_area(radius)
#   1 + 1
#   "Hi, from the calculate circle area"
#   PI * radius**2
# end
# 4.1 PI * radius**2 => 78.5 with the given parameter

# def calculate_circle_area(radius)
#   return PI * radius**2
#   # 'puts' added for testing return behavior
#   puts 1 + 1
#   "Hi, from the calculate circle area"
# end
# 4.1 "Hi, from the calculate circle area"
# 4.2 returns "PI * radius**2" and then stops executing the next line
puts calculate_circle_area 5