class JadenCased
  def self.tweet(philosophy)
    philosophy.split(' ').map(&:capitalize).join ' '
  end
end