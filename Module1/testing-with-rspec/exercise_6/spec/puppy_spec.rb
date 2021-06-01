require "spec_helper"
require "./lib/puppy"

describe Puppy do 

  before :each do
    @my_puppy = Puppy.new
  end

  describe "state" do
    it 'returns "calm" when the state of my pet is queried' do
      result = @my_puppy.state

      expect(result).to eql :calm
    end

    it 'returns "happy_and_eager" when queried after state set to "happy_and_eager"' do
     @my_puppy.state = 'happy and eager'

      result = @my_puppy.state

      expect(result).to eql :happy_and_eager
    end
  end
  
  # My pet makes different noises depending on how it feels
  describe "speak" do
    it 'my_pupy speaks "zzzz...zzzz..." when its state is :calm' do
      @my_puppy.state = "calm"

      result = @my_puppy.speak

      expect(result).to eql "zzzz...zzzz..."
    end

    it 'my_pupy speaks "Woof!! I\'m happy to see you!" when its state is :happy' do
      @my_puppy.state = "happy"

      result = @my_puppy.speak

      expect(result).to eql "Woof!! I\'m happy to see you!"
    end

    it 'my_pupy speaks "Woof!! Woof!! Please take me out to walk!" when its state is :happy_and_eager' do
      @my_puppy.state = "happy_and_eager"

      result = @my_puppy.speak

      expect(result).to eql "Woof!! Woof!! Please take me out to walk!"
    end

    it 'my_pupy speaks "Not talking. Just putting my sad eyes :(" when its state is :sad' do
      @my_puppy.state = "sad"

      result = @my_puppy.speak

      expect(result).to eql  "Not talking. Just putting my sad eyes :("
    end

    it 'my_pupy speaks "Woof! Woof!I\'ll bite you!" when its state is :angry' do
      @my_puppy.state = "angry"

      result = @my_puppy.speak

      expect(result).to eql "BARK BARK BARK!"
    end

    it 'my_puuy speaks "Auuuuuu!!!! Auuuuuuu!!!!!" when its state is :joyful' do
      @my_puppy.state = "joyful"

      result = @my_puppy.speak

      expect(result).to eql "Auuuuuu!!!! Auuuuuuu!!!!!"
    end

    it 'my_pupy speaks "OMG I can talk!" when an unknow sate is passed' do
      @my_puppy.state = "unknown$%&/state here"

      result = @my_puppy.speak

      expect(result).to eql "OMG I can talk!"
    end
  end

  describe "pet" do
    # Petting your puppy once makes them wag their tails
    it 'the state of @my_puppy is :wagging when calling pet' do
      @my_puppy.pet

      result = @my_puppy.state

      expect(result).to eql :wagging
    end

    it 'the state of@my_puppy is :exited when calling pet twice' do
      @my_puppy.pet
      @my_puppy.pet

      result = @my_puppy.state

      expect(result).to eql :excited
    end

    it 'the state of my_puppy is :happy when calling rub_belly three times' do
      @my_puppy.pet
      @my_puppy.pet
      @my_puppy.pet

      result = @my_puppy.state

      expect(result).to eql :happy
    end
  end

  describe "spray" do
    # Your Puppy will start growling if you spray them with water.
    it 'my_puppy changes its state to :growling when one "spray with water" is given' do
      @my_puppy.spray

      result = @my_puppy.state

      expect(result).to eql :growling
    end

    it 'my_puppy says "Grrrr." when one "spray with water" is given' do
      @my_puppy.spray

      result = @my_puppy.speak

      expect(result).to eql "Grrrr."
    end

    it 'my_puppy changes its state to :angry when a "spray with water" is given twice' do
      @my_puppy.spray
      @my_puppy.spray

      result = @my_puppy.state

      expect(result).to eql :angry
    end

    it 'my_puppy says "BARK BARK BARK!" when a "spray with water" is given twice' do
      @my_puppy.spray
      @my_puppy.spray

      result = @my_puppy.speak

      expect(result).to eql "BARK BARK BARK!"
    end

    it 'my_puppy changes its state to :furious when a "spray with water" is by 3' do
      @my_puppy.spray
      @my_puppy.spray
      @my_puppy.spray

      result = @my_puppy.state

      expect(result).to eql :furious
    end

    it 'my_puppy says "I CAN SPEAK AND I\'LL BITE YOU!" when a "spray with water" is by 3' do
      @my_puppy.spray
      @my_puppy.spray
      @my_puppy.spray

      result = @my_puppy.speak

      expect(result).to eql "I CAN SPEAK AND I'LL BITE YOU!"
    end
  end

  describe "rub_belly" do
    # This always calms down your Puppy, no matter how excited or angry they are.
    it 'my_puppy changes its state to :calm when a I rub its belly' do
      # A couple of 'spray' with water
      @my_puppy.spray
      @my_puppy.spray

      # Now to calm
      @my_puppy.rub_belly

      # In case you want to make to him growl you again
      # @my_puppy.spray

      result = @my_puppy.state

      expect(result).to eql :calm
    end
  end
end
