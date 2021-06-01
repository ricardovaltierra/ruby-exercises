


class Puppy
  # Creates an instance variable "state" that you can set in your class.
  # "_reader" means other objects can read your state by calling "some_puppy.state".
  attr_reader :state

  def initialize
    # Puppies are calm at first.
    @state = :calm
    @@mood = 0
  end

  def state=(new_state)
    @state = new_state.gsub(' ', '_').to_sym
  end
  
  def pet
    @@mood += 1
    change_mood
  end

  def rub_belly
    @@mood = 0
    change_mood
  end

  def spray
    @@mood -= @@mood >= 0 ? (@@mood + 1) : 1
    change_mood
  end

  def speak
    case @state
    when :furious
      "I CAN SPEAK AND I'LL BITE YOU!"
    when :angry
      "BARK BARK BARK!"
    when :growling
      "Grrrr."
    when :calm
      "zzzz...zzzz..."
    when :happy
      "Woof!! I'm happy to see you!"
    when :happy_and_eager
      "Woof!! Woof!! Please take me out to walk!"
    when :sad
      "Not talking. Just putting my sad eyes :("
    when :joyful
      "Auuuuuu!!!! Auuuuuuu!!!!!"
    when :wagging
      "Woof!! Woof!! That feels really good!"
    when :excited
      "Auuuuuu!!!! OMG I feel s good!"
    else
      "OMG I can talk!"
    end
  end

  private

  def change_mood
    case @@mood
    when -3
      @state = :furious
    when -2
      @state = :angry  
    when -1
      @state = :growling
    when 0
      @state = :calm
    when 1
      @state = :wagging
    when 2
      @state = :excited
    when 3
      @state = :happy
    when 4
      @state = :joyful
    else
      @state = :calm
    end
  end
end
