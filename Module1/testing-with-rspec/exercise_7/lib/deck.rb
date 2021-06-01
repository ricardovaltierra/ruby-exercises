class Deck
  attr_reader :cards

  NUMBER_OF_CARDS = 52
  FACES = [ "Ace", "Deuce", "Three", "Four", "Five", "Six",
  "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King" ]
  SUITS = [ "Hearts", "Diamonds", "Clubs", "Spades" ]

  def initialize
    @current_card = 0
    @cards = Array.new(NUMBER_OF_CARDS){PlayingCard.new}
    populate_cards
  end

  def populate_cards
    @cards.size.times do |i|
      @cards[i].suit = SUITS[i / 13]
      @cards[i].value = FACES[i % 13]
    end
  end

  def shuffle
    current_card = 0

    @cards.size.times do |first|
      second = rand(NUMBER_OF_CARDS)
      temp = @cards[first]
      @cards[first] = @cards[second]
      @cards[second] = temp
    end
  end

  def deal
    card = nil
    if (@current_card < @cards.length)
      card = @cards[@current_card]
      @current_card += 1
    else
      raise OutOfCardsError
    end
    card
  end
end

class OutOfCardsError < StandardError; end
