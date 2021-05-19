# Ruby Dojo
# Docs:
# https://ruby-doc.org/core-3.0.1/
#

# Working with Modules in Ruby
# Highlights:
 # - You can mixin modules with include to have instance methods
 # - You can mixin modules with extend to have class methods
 # - Modules can live by themselves

 puts "--\n\n"
 # Exercise 1:
 puts "1) Module creation\n\n"
 # Given the following code:'
 # 1. Extract the start and stop methods into a module called Engine
 # 2. Create a OilChangeable module to include on the where you can change the oil
 # 3. Create a module to extend the classes with an engine, that:
 #  3.1 Have a method to return a description about the engine, something like: "Hey I run on Oil"
 # 
 
 module Engine
   def start
     puts "Starting engine..."
   end
 
   def stop
     puts "Stopping engine..."
   end
 end
 
 module OilChangeable
   def change_the_oil
     puts "You can change the oil opening the oil cap"
   end
 end
 
 module WithEngine
   def engine_description
     puts "Hey I run on Oil"
   end
 end
 
 # without engine
 class Bycicle
   def drive
     puts "This is actually nor drive, but ride!"
   end
 end
 
 #with engine
 class Motorcycle
   include Engine
   include OilChangeable
   extend WithEngine
 
   def drive
     puts "Bad boys for life!"
   end
 end
 
 #with engine
 class Car
   include Engine
   include OilChangeable
   extend WithEngine
 
   def drive
     puts "Four wheels rule!"
   end
 end
 
 puts "--Bycicle:\n\n"
 
 new_bycicle = Bycicle.new
 puts new_bycicle.drive
 
 puts "--Motorcycle:\n\n"
 puts Motorcycle.engine_description
 
 new_motorcycle = Motorcycle.new
 puts new_motorcycle.drive
 puts new_motorcycle.start
 puts new_motorcycle.stop
 puts new_motorcycle.change_the_oil
 puts new_motorcycle.start
 
 puts "--Car:\n\n"
 puts Car.engine_description
 
 new_car = Car.new
 puts new_car.drive
 puts new_car.start
 puts new_car.stop
 puts new_car.change_the_oil
 puts new_car.start
 