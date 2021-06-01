require "spec_helper"
require "./lib/playing_card_deck"

describe PlayingCardDeck do 

  before :each do
    @playing_card_deck = PlayingCardDeck.new
  end

  describe 'suit' do
    it 'sets suit value, and then returns it' do
      test_suit = 'Spades'

      @playing_card_deck.suit = test_suit

      result = @playing_card_deck.suit

      puts "RESULT FROM SUIT: #{result}"

      expect(result).to eql test_suit
    end
  end

  describe 'value' do
    it 'sets \'value\' value, and then returns it' do
      test_value = 'Ace'

      @playing_card_deck.value = test_value

      result = @playing_card_deck.value

      expect(result).to eql test_value
    end
  end

  describe 'suit' do
  end

  describe 'inspect' do
  end

  describe 'deal_poker_hands' do
  end
end