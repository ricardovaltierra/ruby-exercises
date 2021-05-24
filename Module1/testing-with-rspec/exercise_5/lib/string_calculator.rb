class StringCalculator

  DELIMITERS = ',|\n|;|\"|\'|\*|\{|\}|\[|\]|\(|\)|\\|\/|\|'
  MAIN_REGEX = Regexp.new "^[//(#{DELIMITERS})\n]*[-?0-9+(#{DELIMITERS})]*-?[0-9]$"
  # MAIN_REGEX = Regexp.new '^[//(#{DELIMITERS})\n]*[-?0-9+(,|\n)]*-?[0-9]$' Pending to check

  def self.add(numbers_input)
    case numbers_input
    when -> (numbers_input) { numbers_input.size.zero? }
      0
    when -> (numbers_input) { main_regex.match numbers_input }
      numbers = extract_numbers numbers_input
      numbers = select_minor_than_1000 numbers
      negatives = select_negatives numbers
      raise "Negatives not allowed. You passed #{negatives.join(',')}" if negatives.any? 
      numbers.reduce(:+)
    else
      raise 'Input not allowed'
    end
  end

  private

  def self.select_negatives(numbers)
    numbers.select(&:negative?)
  end

  def self.select_minor_than_1000(numbers)
    numbers.map(&:to_i).select { |number| number <= 1000 }
  end

  def self.extract_numbers(numbers_input)
    numbers_input.split(Regexp.new DELIMITERS)
  end

  def self.main_regex
    Regexp.new "^[//(#{DELIMITERS})\n]*[-?0-9+(#{DELIMITERS})]*-?[0-9]$"
  end
end