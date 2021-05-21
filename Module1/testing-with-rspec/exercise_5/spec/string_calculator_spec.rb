require "spec_helper"
require "./lib/string_calculator"

describe StringCalculator do 
  
  #1 The method can take 0, 1 or 2 numbers, and will return their sum (for an empty string it will return 0) 
  describe ".add" do
    it 'returns 0 when an empty string is passed' do
      result = StringCalculator.add ''

      expect(result).to eql 0
    end

    it 'returns the number when just one number is given on the string' do
      result = StringCalculator.add '1'

      expect(result).to eql 1
    end

    it 'returns the sum of two numbers when two are given separated by a comma' do
      result = StringCalculator.add '1,2'

      expect(result).to eql 3
    end

    it 'returns ERROR when passed the following string: "1 2"' do
      result = StringCalculator.add '1 2'

      expect(result).to eql "ERROR"
    end

    it 'returns different from 3 when passed the following string: "12 "' do
      result = StringCalculator.add '12 '

      expect(result).not_to eql 3
    end

    it 'returns different from 5 when passed the following string: " 5 "' do
      result = StringCalculator.add ' 5 '

      expect(result).not_to eql 5 
    end

    # Allow the Add method to handle an unknown amount of numbers
    it 'returns 15 when passed the following string: "5,5,5"' do
      result = StringCalculator.add '5,5,5'

      expect(result).to eql 15
    end

    # Allow the Add method to handle new lines between numbers (instead of commas)
    it 'returns 6 when passed the following string: "1\n2,3"' do
      result = StringCalculator.add "1\n2,3"

      expect(result).to eql 6
    end

    it 'returns ERROR when passed the following string: "1,\n"' do
      result = StringCalculator.add "1,\n"

      expect(result).to eql "ERROR"
    end

    # Support different delimiters
    it 'returns 3 when passed the following string: "//;\n1;2"' do
      result = StringCalculator.add "//;\n1;2"

      expect(result).to eql 3
    end

    it 'returns 3 when passed the following string: "//|\n1|2"' do
      result = StringCalculator.add "//|\n1|2"

      expect(result).to eql 3
    end

    it 'returns 3 when passed the following string: "//\n\n1\n2"' do
      result = StringCalculator.add "//\n\n1\n2"

      expect(result).to eql 3
    end

    # Calling Add with a negative number will throw an exception “negatives not allowed”
    it 'returns exception "Negatives not allowed. You passed -1" when passed the following string: "//|\n-1|2"' do
      result = StringCalculator.add "//|\n-1|2"

      expect(result).to eql "Negatives not allowed. You passed -1"
    end

    it 'returns exception "Negatives not allowed. You passed -1,-2,-3" when passed the following string: "//|\n-1|-2,-3"' do
      result = StringCalculator.add "//|\n-1|-2,-3"

      expect(result).to eql "Negatives not allowed. You passed -1,-2,-3"
    end

    xit 'returns exception "ERROR" when passed the following string: "//,\n-1,-2-3"' do
      result = StringCalculator.add "//,\n-1,-2-3"

      expect(result).to eql "ERROR"
    end

    # Numbers bigger than 1000 should be ignored, so adding 2 + 1001  = 2
    it 'returns 2 when passed the following string: "//|\n2,1001"' do
      result = StringCalculator.add "//|\n2,1001"

      expect(result).to eql 2
    end

    it 'returns exception "Negatives not allowed. You passed -2" when passing: "//|\n-2,1001"' do
      result = StringCalculator.add "//|\n-2,1001"

      expect(result).to eql "Negatives not allowed. You passed -2"
    end

    it 'returns the value 1010 when passed the following string: "//|\n10,1000"' do
      result = StringCalculator.add "//|\n10,1000"

      expect(result).to eql 1010
    end

    # Extra - Delimiters can be of any length with the following format:  `//[delimiter]\n`
    it 'returns 6 when passed the string: "-1,-2,-3"' do
      result = StringCalculator.add "//[***]\n1***2***3"

      expect(result).to eql 6
    end

    it 'returns exception "ERROR" when passing: "//[***]\*n1***2***3"' do
      result = StringCalculator.add "//[***]\*n1***2***3"

      expect(result).to eql "ERROR"
    end
  end
end
