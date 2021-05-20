class StringCalculator

  @@delimiters = ',|\n|;|\"|\'|\*|\{|\}|\[|\]|\(|\)|\\|\/|\|'
  @@main_regex = Regexp.new "^[//(#{@@delimiters})\n]*[-?0-9+(#{@@delimiters})]*-?[0-9]$"
  # @@main_regex = Regexp.new '^[//(#{@@delimiters})\n]*[-?0-9+(,|\n)]*-?[0-9]$' Pending to check

  def self.add(string)
    case string
    when -> (string) { string.size.zero? }
      0
    when -> (string) { @@main_regex.match string }
      numbers_array = string.split(Regexp.new @@delimiters).map(&:to_i).select { |number| number <= 1000 }
      negatives = numbers_array.select(&:negative?)
      return "Negatives not allowed. You passed #{negatives.join(',')}" if negatives.any? 
      numbers_array.reduce(:+)
    else
      "ERROR"
    end
  end
end