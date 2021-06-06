require "spec_helper"
require "./lib/playing_card"

describe PlayingCard do 

  before :each do
    @playing_card = PlayingCard.new
  end

  describe "suit" do
    it 'fills suit value of a given card, and then reads it' do
      test_suit = 'Spades'

      @playing_card.suit = test_suit

      result = @playing_card.suit

      expect(result).to eql test_suit
    end
  end

  describe 'value' do
    it 'fills "value" value of a given card, and then reads it' do
      test_value = 'Ace'

      @playing_card.value = test_value

      result = @playing_card.value

      expect(result).to eql test_value
    end
  end

  describe 'inspect' do
    it 'returns a string that matches the given pattern, after filling suit and \'value\' values' do
      regex = /^[A-Z][a-z]+\s(of)\s[A-Z][a-z]+$/

      @playing_card.suit = 'Spades'
      @playing_card.value = 'Six'

      result = @playing_card.inspect

      expect(regex).to match result
    end
  end
end