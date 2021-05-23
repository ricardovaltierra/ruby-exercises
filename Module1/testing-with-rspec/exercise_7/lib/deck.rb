class Deck
  attr_reader :cards

  def initialize
    @cards = (1..100).to_a
  end

  def shuffle
    
  end

  def deal
    # your code here
  end
end

class OutOfCardsError < StandardError; end
