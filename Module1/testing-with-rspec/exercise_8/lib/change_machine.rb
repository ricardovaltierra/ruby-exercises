# You can modify this class however you like to make it pass the test suite.
# Coin values:

# `quarter`: 25 cents
# `dime`: 10 cents
# `nickel`: 5 cents
# `penny`: 1 cent

class ChangeMachine

  QUARTER = 0.25
  DIME = 0.10
  NICKEL = 0.05
  PENNY = 0.01

  def initialize
  end

  def cost(cents)
    exeptionValidation(cents)
    @cost = cents / 100.0
  end

  def paid(cents)
    exeptionValidation(cents)
    @paid = cents / 100.0
  end

  def dispense_change
    result = @paid - @cost
    result -= result > 1 ? 1 : result < 0 ? result : 0
    while result > 0 do 
      if result / QUARTER >= 1 
        result = (result - QUARTER).round(2)
        quarter
        # puts "Quarter extracted, current result: #{result}"
      elsif result / DIME >= 1
        result = (result - DIME).round(2)
        dime
        # puts "Dime extracted, current result: #{result}"
      elsif result / NICKEL >= 1
        result = (result - NICKEL).round(2)
        nickel
        # puts "Nickel extracted, current result: #{result}"
      elsif result / PENNY >= 1
        result = (result - PENNY).round(2)
        penny
        # puts "Penny extracted, current result: #{result}"
      end
    end

    result
  end

  private

  def exeptionValidation(cents)
    raise NonValidInput unless cents.is_a?(Integer)
    raise NonValidInput unless cents > 0 
  end

  # You don't have to modify anything under this line

  def quarter
    puts 'Dispensed quarter'
  end
  def dime
    puts 'Dispensed dime'
  end
  def nickel
    puts 'Dispensed nickel'
  end
  def penny
    puts 'Dispensed penny'
  end
end

class NonValidInput < StandardError; end