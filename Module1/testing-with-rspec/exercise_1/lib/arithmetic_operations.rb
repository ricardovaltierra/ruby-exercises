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
    begin
      a / b
    rescue => e
      raise e
    end
  end
end

