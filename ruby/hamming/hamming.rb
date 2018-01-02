class Hamming
  def self.compute(x, y)
    raise ArgumentError if x.size != y.size
    y = y.scan /\w/
    return x.scan(/\w/).select.with_index do |x, i|
      x != y[i]
    end.count
  end
end

module BookKeeping
  VERSION = 3
end
