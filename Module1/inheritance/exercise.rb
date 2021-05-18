require 'set'
# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Working with Inheritance in Ruby
# Highlights:
  # - Any number of classes can inherit from a single superclass
  # - The class being inherited from is called the parent or superclass
  # - A class can only inherit from one parent. This is not the same to other programming languages.
  
# How to run this file
# 1. Open a terminal and `cd` to where the project is
  # cd path/to/ruby-exercises/Module1/inheritance
# 2. Run the file
  # ruby exercise.rb

# You can use the method "puts" to output the result to the console
# puts a_variable
# puts { name: "Alice" }

# Exercise 1:
# Create a superclass Vehicle:
#   1. Add a class method called gas_mileage that receives two arguments - gallons and miles, which will return
#      the ratio between this, miles / gallons
#   2. Add a subclass of Vehicle called Car that has a constant variable with the number of doors - in this case 4
#     2.1 The initialize method should receive 3 arguments - year, model, color
#     2.2 Create a method 'accelerate' that increases the current speed by the argument it receives. It will default to 1
#     2.3 Create a method 'brake' that decreases the current speed by the argument it receives. It will default to 1
#     2.4 Create a method to get the current speed
#     2.5 Create a method `shutdown` to set the current speed to 0
#     2.6 Create a method `spray` that receives a color, and sets the new color
#   3. Add a subclass of Vehicle called Truck that has a constant variable with the number of doors - in this case 2
#   4. Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass.
#      Create a method to print out the value of this class variable as well.
#   5. Add a subclass of Vehicle called Truck that has a constant variable with the number of doors - in this case 2
#   6. Move all the methods from the Car class to the Vehicle
#   7. Write a method called age that calls a private method to calculate the age of the vehicle. Make sure the private method is not available from outside of the class.
#      You'll need to use Ruby's built-in Time class to help.

class Vehicle
  attr_reader :color

  @@vehicles = 0

  def initialize(year, model, color)
    @@vehicles += 1
    @speed = 0
    @year = year
    @model = model
    @color = color
  end

  def gas_mileage(gallons, miles)
    miles / gallons
  end

  def self.count
    @@vehicles
  end

  def age
    age_of_the_vehicle
  end

  # methods coming from 'Car' subclass
  def accelerate(velocity = 1)
    @speed += velocity
  end

  def brake(velocity = 1)
    if @speed > 0 && @speed >= velocity
      @speed -= velocity 
    else
      puts "You can't decrease that fast. Current speed => #{@speed}"
    end
  end
  
  def current_speed
    @speed
  end

  def shutdown
    @speed = 0
  end

  def spray(color)
    @color = color
  end

  private

  def age_of_the_vehicle
    @@age = Time.now - @year
  end
end

class Car < Vehicle
  def initialize(year, model, color)
    super(year, model, color)
    @doors = 4
  end

  # def accelerate(velocity = 1)
  #   @speed += speed
  # end

  # def brake(velocity = 1)
  #   @speed -= speed if @speed > 0 && @speed >= velocity
  # end
  
  # def current_speed
  #   @speed
  # end

  # def shutdown
  #   @speed = 0
  # end

  # def spray(color)
  #   @color = color
  # end
end

class Truck < Vehicle
  def initialize(year, model, color)
    super(year, model, color)
    @doors = 2
  end
end

# printing section

puts "--\n\n"

new_car = Car.new Time.new(1988, 1,1), 'sedan', 'blue'
puts "Car object: #{new_car} =>"
puts "Gas/Mileage: #{new_car.gas_mileage 3, 50.0}"

puts "--\n\n"

new_truck = Truck.new Time.new(1985, 1,1), 'Torton', 'black'
puts "Truck object: #{new_truck}"

puts "--\n\n"

puts "Number of Vehicles created either being Trucks or Cars =>#{Vehicle::count}"

new_car.accelerate 12
puts "new_car current speed: #{new_car.current_speed}"
new_car.brake 10
puts "new_car current speed: #{new_car.current_speed}"
new_car.brake 10
puts "new_car current speed: #{new_car.current_speed}"
new_car.shutdown
puts "new_car current speed: #{new_car.current_speed}"
puts "new_car's color: #{new_car.color}"
new_color = 'black'
puts "painting new_car with color #{new_color}..."
new_car.spray new_color
puts "now the new_car has a color #{new_car.color}"
puts "age of new_car: #{new_car.age}"
puts Time.now