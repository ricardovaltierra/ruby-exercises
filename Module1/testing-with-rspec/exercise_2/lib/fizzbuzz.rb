class FizzBuzz
  def self.play(number)
    result_word = ''

    result_word += 'Fizz' if number % 3 == 0 || (number.to_s.split('').any? '3')
    result_word += 'Buzz' if number % 5 == 0 || (number.to_s.split('').any? '5')

    result_word
  end
end
