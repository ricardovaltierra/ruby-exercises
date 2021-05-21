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
      result = FizzBuzz.play(1_015_423)

      expect(result).to eql 'Fizz'
    end

    it "Number has a 5 in it, the game says 'Buzz'" do
      result = FizzBuzz.play(1_484_695)

      expect(result).to eql 'Buzz'
    end

    #2 test cases missing for when number has 3 in it but is also divisible between 5.
    # Same switching numbers. Buth should return 'FizzBuzz'
  end
end
