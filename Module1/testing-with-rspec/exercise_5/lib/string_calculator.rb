class StringCalculator

  DELIMITERS = ',|\n|;|\"|\'|\*|\{|\}|\[|\]|\(|\)|\\|\/|\|'
  MAIN_REGEX = Regexp.new "^[//(#{DELIMITERS})\n]*[-?0-9+(#{DELIMITERS})]*-?[0-9]$"
  # MAIN_REGEX = Regexp.new '^[//(#{DELIMITERS})\n]*[-?0-9+(,|\n)]*-?[0-9]$' Pending to check

  def self.add(numbers_input)
    case numbers_input
    when -> (numbers_input) { numbers_input.size.zero? }
      0
    when -> (numbers_input) { main_regex.match numbers_input }
      numbers = numbers_input.split(Regexp.new DELIMITERS).map(&:to_i).select { |number| number <= 1000 }
      negatives = numbers.select(&:negative?)
      return "Negatives not allowed. You passed #{negatives.join(',')}" if negatives.any? 
      numbers.reduce(:+)
    else
      "ERROR"
    end
  end

  private

  def self.main_regex
    Regexp.new "^[//(#{DELIMITERS})\n]*[-?0-9+(#{DELIMITERS})]*-?[0-9]$"
  end

  # Pending:
  # Separate line #12/#13 in several separate private methods
end