class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    return (1..@num).reduce(:+) ** 2
  end

  def sum_of_squares
    return (1..@num).map {|n| n ** 2}.reduce(:+)
  end

  def difference
    return square_of_sum - sum_of_squares
  end
end

class BookKeeping
  VERSION = 4
end
