require "spec_helper"
require "./lib/fizzbuzz"

describe FizzBuzz do 
  # Addition operation
  describe ".play" do
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
  end
end
