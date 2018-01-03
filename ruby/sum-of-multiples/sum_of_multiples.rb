class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(max)
    multiples = []
    @factors.each do |factor|
      multiples << (1..max-1).select {|multiple| multiple % factor == 0}
    end
    return 0 if multiples.flatten.empty?
    multiples.flatten.uniq.reduce(:+)
  end
end

module BookKeeping
  VERSION = 2
end
