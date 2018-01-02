class Grains
  def self.square(int)
    raise ArgumentError if int <= 0 || int > 64
    return 1 if int == 1
    squares = [1]
    (0..int-2).each do |i|
      squares.push squares[i] + squares[i]
    end
    return squares.last
  end

  def self.total
    squares = [1]
    (0..62).each do |i|
      squares.push (squares[i] + squares[i])
    end
    squares.reduce(:+)
  end
end

module BookKeeping
  VERSION = 1
end
