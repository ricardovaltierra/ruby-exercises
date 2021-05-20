require "spec_helper"
require "./lib/fizzbuzz"

describe FizzBuzz do 
  # Addition operation
  describe ".play" do

    # Step 1

    it "Numbers divisible by 3, the game says 'Fizz'" do
      result = FizzBuzz.play(3)

      expect(result).to eql 'Fizz'
    end

    it "Numbers divisible by 5, the game says 'Buzz'" do
      result = FizzBuzz.play(5)

      expect(result).to eql 'Buzz'
    end

    it "Numbers divisible by 3 **and** 5, the game says 'FizzBuzz'" do
      result = FizzBuzz.play(15)

      expect(result).to eql 'FizzBuzz'
    end

    # Step 2
    
    it "Number has a 3 in it, the game says 'Fizz'" do
      result = FizzBuzz.play(1015423)

      expect(result).to eql 'Fizz'
    end

    it "Number has a 5 in it, the game says 'Buzz'" do
      result = FizzBuzz.play(1484695)

      expect(result).to eql 'Buzz'
    end
  end
end
