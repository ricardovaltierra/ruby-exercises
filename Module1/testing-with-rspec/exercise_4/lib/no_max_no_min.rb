class NoMaxNoMin
  def self.sum(array)
    array.sort!
    array.pop
    array.shift
    array.reduce(:+)
  end
end