class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    h = Hash.new(0)
    @phrase.scan(/\w+\'?\w+|\d+/).each do |word|
      h[word.downcase] += 1
    end
    return counts
  end
end

module BookKeeping
  VERSION = 1
end
