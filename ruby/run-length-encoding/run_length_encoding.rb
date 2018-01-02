class RunLengthEncoding
  def self.encode(input)
    counts = []
    input.group_by(&:itself)
  end
end

module BookKeeping
  VERSION = 1
end
