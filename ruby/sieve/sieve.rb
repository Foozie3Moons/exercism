class Sieve
  def initialize(limit)
    @limit = limit
    @numbers = (2..@limit).to_a
  end

  def primes
    @numbers.each do |n|
      (2..@limit).each do |i|
        @numbers.delete (n * i)
      end
    end
  end
end

module BookKeeping
  VERSION = 1
end
