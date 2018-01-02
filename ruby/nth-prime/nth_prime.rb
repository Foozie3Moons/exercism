class Prime
  def self.nth(n)
    raise ArgumentError if n == 0
    return 2 if n == 1
    primes = [2,3]
    prime = 4
    until primes.length == n
      (2..prime/2).each do |divisor|
        if prime % divisor == 0
          prime += 1
          break
        elsif divisor == prime/2
          primes << prime
          prime += 1
        end
      end
    end
    primes.last
  end
end

module BookKeeping
  VERSION = 1
end
