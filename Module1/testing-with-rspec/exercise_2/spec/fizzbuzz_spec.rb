require "spec_helper"
require "./lib/fizzbuzz"

describe FizzBuzz do 
  # Addition operation
  describe ".play" do

    # Step 1

    it "Numbers 3 is divisible by 3, the game says 'Fizz'" do
      result = FizzBuzz.play(3)

      expect(result).to eql 'Fizz'
    end

    it "Numbers 5 is divisible by 5, the game says 'Buzz'" do
      result = FizzBuzz.play(5)

      expect(result).to eql 'Buzz'
    end

    it "Number 15 is divisible by 3 **and** 5, the game says 'FizzBuzz'" do
      result = FizzBuzz.play(15)

      expect(result).to eql 'FizzBuzz'
    end

    # Step 2
    
    it "Number 1_015_423 has a 3 in it, the game says 'Fizz'" do
      result = FizzBuzz.play(1_012_423)

      expect(result).to eql 'Fizz'
    end

    it "Number 1_484_695 has a 5 in it, the game says 'Buzz'" do
      result = FizzBuzz.play(1_484_695)

      expect(result).to eql 'Buzz'
    end

    it "Number 1_995_399_5533 has a 3 and a 5 in it, the game says 'FizzBuzz'" do
      result = FizzBuzz.play(1_995_399_5533)

      expect(result).to eql 'FizzBuzz'
    end

  end
end
