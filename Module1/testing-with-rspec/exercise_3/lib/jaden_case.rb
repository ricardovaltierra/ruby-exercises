class JadenCased
  def self.tweet(philosophy)
    philosophy.split(' ').map { |word| word.capitalize }.join ' '
  end
end