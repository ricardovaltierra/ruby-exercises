class ArithmeticOperations
  def self.sum(*args)
    args.reduce(:+)
  end

  def self.subs(*args)
    args.reduce(:-)
  end

  def self.times(*args)
    args.reduce(:*)
  end

  def self.div(a, b)
    a / b
  end
end

