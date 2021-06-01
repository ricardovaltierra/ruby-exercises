require "spec_helper"
require "./lib/deck"

describe Deck do 

  before :each do
    @deck = Deck.new
  end

  describe "deal" do
    it 'returns an instance of PlayingCard class' do
      result = @deck.deal.class

      expect(result).to eql PlayingCard
    end

    it 'returns a string on format "#{value.to_s} of #{suit.to_s}" calling deal (inspect on PlayingCard)' do
      regex = /^[A-Z][a-z]+\s(of)\s[A-Z][a-z]+$/
      
      new_card_object = @deck.deal

      result = new_card_object.inspect

      expect(regex).to match result
    end

    it 'returns 52 as the length of the cards that are unique when calling deal 52 times' do
      array_of_new_cards = []
      
      52.times { array_of_new_cards << @deck.deal }

      result = array_of_new_cards.uniq.size

      expect(result).to match 52
    end
  end
    
    
  describe 'cards' do 
    it 'returns 52 different cards in order when calling deal 52 times' do
      # deck = "[Ace of Hearts, Deuce of Hearts, Three of Hearts, Four of Hearts, Five of Hearts, Six of Hearts, Seven of Hearts, Eight of Hearts, Nine of Hearts, Ten of Hearts, Jack of Hearts, Queen of Hearts, King of Hearts, Ace of Diamonds, Deuce of Diamonds, Three of Diamonds, Four of Diamonds, Five of Diamonds, Six of Diamonds, Seven of Diamonds, Eight of Diamonds, Nine of Diamonds, Ten of Diamonds, Jack of Diamonds, Queen of Diamonds, King of Diamonds, Ace of Clubs, Deuce of Clubs, Three of Clubs, Four of Clubs, Five of Clubs, Six of Clubs, Seven of Clubs, Eight of Clubs, Nine of Clubs, Ten of Clubs, Jack of Clubs, Queen of Clubs, King of Clubs, Ace of Spades, Deuce of Spades, Three of Spades, Four of Spades, Five of Spades, Six of Spades, Seven of Spades, Eight of Spades, Nine of Spades, Ten of Spades, Jack of Spades, Queen of Spades, King of Spades]"

      new_deck = Deck.new

      result = @deck.cards.to_s

      expect(result).to eql new_deck.cards.to_s
    end

    it 'raises OutOfCardsError when calling "deal" 53 times' do
      expect{ 53.times { @deck.deal } }.to raise_error OutOfCardsError
    end
  end

  describe 'shuffle' do
    it 'returns 52 different shuffled cards when calling deal 52 times and shuffle method' do

      new_deck = Deck.new

      @deck.shuffle

      result = @deck.cards

      expect(result).not_to eql new_deck.cards
    end
  end
end