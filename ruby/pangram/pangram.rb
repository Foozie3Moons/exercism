class Pangram
  def self.pangram?(phrase)
    return ('a'..'z').count {|letter| !(phrase.downcase.include? letter) } == 0
  end
end

module BookKeeping
  VERSION = 6
end
