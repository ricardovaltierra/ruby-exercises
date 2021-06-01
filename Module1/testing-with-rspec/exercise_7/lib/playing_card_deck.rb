require_relative './deck'
require_relative './playing_card'

class PlayingCardDeck < Deck
  attr_accessor :suit, :value

  def initialize
    super
    # your code here
  end

  def suit=(playing_card)

  end

  def value
  end

  def inspect
  end

  def deal_poker_hands(count)
    # your code here
  end
end
