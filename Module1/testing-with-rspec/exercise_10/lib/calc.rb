module Calc
  class << self
    def add(*args)
      args.reduce(:+)
    end

    def sub(a, b)
      a - b
    end

    def mul(*args)
      args.reduce(:*)
    end

    def div(a, b)
      a.to_f / b
    end

    def factors(n)
      (1..n).to_a.select do |i|
        n % i == 0
      end
    end

    def prime(n)
      return false if n.negative?
      return false if n == 0 || n == 1
      n_divisible = (1..n).to_a.select { |i| n % i == 0 }
      n_divisible.length > 2 ? false : true
    end

    def primes_in_range(first, last)
      first -= first.negative? ? first - 2 : 0
      (first..last).to_a.filter_map do |n|
        n_divisible = (1..n).to_a.select { |i| n % i == 0 }
        n unless n_divisible.length > 2
      end
    end
  end
end
