class Series
  def initialize(string)
    @string = string
  end

  def slices(n)
    raise ArgumentError, 'Slice size cannot be bigger than the string' if n > @string.size
    result = []
    index = 0
    (@string.size - n + 1).times do
      result << @string.slice(index, n)
      index += 1
    end
    result
  end
end

module BookKeeping
  VERSION = 1
end
