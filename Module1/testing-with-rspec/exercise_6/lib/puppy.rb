class Puppy
  # Creates an instance variable "state" that you can set in your class.
  # "_reader" means other objects can read your state by calling "some_puppy.state".
  attr_reader :state

  def initialize
    # Puppies are calm at first.
    @state = :calm
  end

  def state=(new_state)
    
  end
  
  def pet
    puts "THIS IS AN UOTPUT: #{ #{parameterize("Donald E. Knuth", separator: '_')}}"
  end

  def rub_belly
    # Your code here
  end

  def spray
    # Your code here
  end

  def speak
    # Your code here
  end
end
