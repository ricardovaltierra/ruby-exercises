# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Working with conditionals and loops in Ruby
# Highlights:
 # - There are two boolean operators - || and &&
 # - The evaluation of a condition is a boolean
 # - Watch for infinite loops for a condition
  
# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/flow-control
# 2. Run the file
  # ruby exercise.rb

# You can use the method "puts" to output the result to the console
# puts a_variable
# puts "Alice"

# Exercise 1:
p "1) Given an array of integers print when is odd and when is even"
# Given an array of integers print when is odd and when is even
# Hint: You need to use one of the loops from the lesson
integers = (1..100).to_a

integers.size.times do |i|
  current_integer = integers[i]
  if (current_integer % 2) == 0
    p " #{current_integer} is an EVEN number"
  else
    p " #{current_integer} is an ODD number"
  end
end

p '--'

# Exercise 2:
p "2) You get to throw a dice, print the commented word for each value:"
# You get to throw a dice, print the following for each value:
# 1 - You only live once
# 2 - You have two hands
# 3 - March is the third month of the year
# 4 - Fantastic Four
# 5 - 5 seconds to...
# 6 - Number of first Avengers
dice = [1,2,3,4,5,6]
6.times do |i|
  dice_result = dice.sample
  result_sentence = " Dice thrown. Face #{dice_result}. "

  if dice_result == 1
    result_sentence += "You only live once"
  elsif dice_result == 2
    result_sentence += "You have two hands"
  elsif dice_result == 3
    result_sentence += "March is the third month of the year"
  elsif dice_result == 4
    result_sentence += "Fantastic Four"
  elsif dice_result == 5
    result_sentence += "5 seconds to..."
  elsif dice_result == 6
    result_sentence += "Number of first Avengers"
  end

  p result_sentence
end

p '--'

# Exercise 3:
p "3) Given the following code"
# Given the following code:
# 1. What is the output from the first condition
  # - "There is plenty of cars for everyone"
# 2. What is the output from the second condition
  # - "Four wheels are safer"
# 3. What is the output from the third condition
  # - "Maybe we split?"
# 4. Change the values for people, cars and motorcycles:
#    4.1 people = 20, cars = 10, motorcycles = 30
people = 30
cars = 40
motorcycles = 15

p " 3.1) What is the output from the first condition"
if cars > people
  puts "   There is plenty of cars for everyone"
elsif cars < people
  puts "   We don't have enough cars"
else
  puts "   Well this is odd!"
end

p " 3.2) What is the output from the second condition"
if motorcycles > cars
  puts "   We love the two wheels vehicles"
elsif motorcycles < cars
  puts "   Four wheels are safer"
else
  puts "   Is there any other out?"
end

p " 3.3) What is the output from the third condition"
if people > motorcycles
  puts "   Maybe we split?"
else
  puts "   Everyone gets a bike"
end

p " 3.4) Change the values => people = 20, cars = 10, motorcycles = 30"
people = 20
cars = 10
motorcycles = 30

p "  3.4.1) What is the output from the first condition"
if cars > people
  puts "    There is plenty of cars for everyone"
elsif cars < people
  puts "    We don't have enough cars"
else
  puts "    Well this is odd!"
end

p "  3.4.2) What is the output from the second condition"
if motorcycles > cars
  puts "    We love the two wheels vehicles"
elsif motorcycles < cars
  puts "    Four wheels are safer"
else
  puts "    Is there any other out?"
end

p "  3.4.3) What is the output from the third condition"
if people > motorcycles
  puts "    Maybe we split?"
else
  puts "    Everyone gets a bike"
end

p '--'

# Exercise 4: 
p "4) Given an string"
# Given an string:
# 1. print the words that have 2 letters, following this format - The word 'On' has two words 
# 2. print the words that have more than to 2 letters and less or equal to 5 letters, following this format - The word 'man' has three words
# 3. print the words that have more than 5 letters, following this format - The word 'offering' has more than 5 words 
phrase = "On offering to help the blind man, the man who then stole his car, had not, at that precise moment, had any evil intention, quite the contrary, what he did was nothing more than obey those feelings of generosity and altruism which, as everyone knows, are the two best traits of human nature and to be found in much more hardened criminals than this one, a simple car-thief without any hope of advancing in his profession, exploited by the real owners of this enterprise, for it is they who take advantage of the needs of the poor"
phrase_array = phrase.split /[,\s]+/

p " 4.1) print the words that have 2 letters, following this format - The word 'On' has two words"
phrase_array.size.times do |i|
  current_word = phrase_array[i]
  p "  The word '#{current_word}' has two letters" if current_word.length == 2
end

p " 4.2) print the words that have more than to 2 letters and less or equal to 5 letters, following this format - The word 'man' has three words"
phrase_array.size.times do |i|
  current_word = phrase_array[i]
  current_length = current_word.length
  p "  The word '#{current_word}' has three letters" if current_word.length > 2 && current_length <= 5
end

p " 4.3) print the words that have more than 5 letters, following this format - The word 'offering' has more than 5 words "
phrase_array.size.times do |i|
  current_word = phrase_array[i]
  p "  The word '#{current_word}' has more than 5 letters" if current_word.length > 5
end

p '--'

# Exercise 5:
p "5) Using a `times` iterator print the even numbers from a given number"
# Using a `times` iterator print the even numbers from a given number
number = 100
number.times { |i| p i if i % 2 == 0 }

p '--'

# Exercise 6:
p "6) Using a `times`, `while` and `until` loops print \"Beetlejuice!\" three times"
# Using a `times`, `while` and `until` loops print "Beetlejuice!" three times

p " 6.1) times"

3.times do
  p "  Beetlejuice!"
end

p " 6.2) while"

counter = 0

while counter <= 2
  p "  Beetlejuice!"
  counter += 1  
end

p " 6.3) until"

counter = 1
until_flag = false

until until_flag
  p "  Beetlejuice!"
  counter += 1
  until_flag = !until_flag if counter == 4
end
