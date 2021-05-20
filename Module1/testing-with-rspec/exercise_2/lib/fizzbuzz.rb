class FizzBuzz
  def self.play(number)
    
    if number % 3 == 0 && number % 5 == 0
      return "FizzBuzz"
    elsif (number % 3 == 0) || (number.to_s.split('').any? '3')
      return "Fizz"
    elsif (number % 5 == 0) || (number.to_s.split('').any? '3')
      return "Buzz"
    else 
      return number
    end
  end
end
