class Binary
  def self.to_decimal(str)
    raise ArgumentError if str.match(/[2-9a-zA-Z\s\,\-\_]/)
    str.reverse.each_char.map.with_index(0) do |x, i|
      x.to_i * 2 ** i
    end.reduce(:+)
  end

  private
  def

end

module BookKeeping
  VERSION = 3
end
