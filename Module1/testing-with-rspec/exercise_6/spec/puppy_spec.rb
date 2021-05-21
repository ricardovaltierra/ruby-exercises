require "spec_helper"
require "./lib/puppy"

describe Puppy do 
  
  my_puppy = Puppy.new

  describe "state" do
    it 'returns "calm" when the state of my pet is queried' do
      result = my_puppy.state

      expect(my_puppy.state).to eql :calm
    end

    it 'returns "happy_and_eager" when queried after state set to "happy_and_eager"' do
      my_puppy.pet
      #  = 'happy and eager'

      result = my_puppy.state

      expect(my_puppy.state).to eql :happy_and_eager
    end
  end
  
  describe "pet" do
    xit 'returns 0 when an empty string is passed' do
      result = Puppy.pet ''

      expect(result).to eql 0
    end
  end

  describe "rub_belly" do
    xit 'returns 0 when an empty string is passed' do
      result = Puppy.rub_belly ''

      expect(result).to eql 0
    end
  end

  describe "spray" do
    xit 'returns 0 when an empty string is passed' do
      result = Puppy.spray ''

      expect(result).to eql 0
    end
  end

  describe "speak" do
    xit 'returns 0 when an empty string is passed' do
      result = Puppy.speak ''

      expect(result).to eql 0
    end
  end
end
