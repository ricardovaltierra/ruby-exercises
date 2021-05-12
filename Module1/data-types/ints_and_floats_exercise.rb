# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Perform basic operations with Ruby
# Highlights:
 # - You can perform operations between integers and floats
 # - Keep track of your variables
 
# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/data-types
# 2. Run the file
  # ruby ints_and_floats_exercise.rb

# You can use the method "puts" to output the result to the console
# puts sum
# puts 1 + 2

# Exercise 1:
# Add the necessary code to add the necessary numbers to sum 342
puts "#{340 + 2} come from adding #{340} + #{2}"

# Exercise 2:
# Add the necessary code to substract the necessary numbers to equal -43
puts "#{0 - 43} comes from substract #{0} - #{43}"

# Exercise 3:
# Add the necessary code to multiply the the necessary numbers to get 144
puts "#{12 ** 2} comes from elevating #{12} to the power of #{2}"

# Exercise 4:
# Add the necessary code to divide the the necessary numbers to get 5
puts "#{25 / 5} comes from dividing #{25} / #{5}"

# Exercise 5:
# Calculate the area and perimeter for a square
# Square L = 3
puts  "The square has L = 3, being then area = #{3 ** 2} and perimeter = #{3 * 4}"

# Exercise 6:
# Calculate the area and perimeter for a rectangle
# Rectangle W = 3, H = 4
puts "The rectangel has W = 3 and H = 4, being then area = #{3 * 4} and perimeter = #{(3 * 2) + (4 * 2)}"

# Exercise 7:
# Calculate the area and perimeter for a triangle
base = 2
height = 3
side_1 = 3
side_2 = Math.sqrt((base ** 2) + (side_1 ** 2))
triangle_area =  (base * height) / 2
triangle_perimeter =  base + side_1 + side_2
puts "The triangle has a base of #{base} and height of #{height}, being then area = #{triangle_area} and perimeter = #{triangle_perimeter}"

# Exercise 8:
# Calculate the area and perimeter for a circle
# Circle r = 5
pi = 3.14156
radius = 5
circle_area = pi * (radius ** 2)
circle_perimeter = 2 * pi * radius
puts "The circle has a radius of #{radius}, being then the area = #{circle_area} and the perimeter = #{circle_perimeter}"

# Exercise 9:
# Get the average age from your family
members = [61, 60, 36, 34, 30, 23]
age_sum = members.reduce(:+)
age_average = age_sum / members.size
puts "The members of my family have the following ages: #{members}, with a total sum of #{age_sum} being the average then #{age_average}"

# Exercise 10:
# Calculate the proportion for each fruit found on a bowl:
 # 3 bananas, 2 apples, 1 watermelon, 5 kiwis, 10 strawberries
 fruits_in_the_bowl = 3 + 2 + 1 + 5 + 10
 bananas = 3.to_f
 apples = 2.to_f
 watermelons = 1.0
 kiwis = 5.0
 strawberries = 10.0
 puts "There are #{fruits_in_the_bowl} int the bowl. The proportion of the bananas is #{bananas / fruits_in_the_bowl}, 
                                                                        on apples is #{apples /fruits_in_the_bowl},
                                                                        on watermelons is #{watermelons / fruits_in_the_bowl}
                                                                        on kiwis is is #{kiwis / fruits_in_the_bowl},
                                                                        and on strawberries is is #{strawberries / fruits_in_the_bowl}."

