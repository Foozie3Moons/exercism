class Bob
  def self.hey(remark)
    if remark.upcase == remark && remark.scan(/[A-Z]+/).length > 0
      'Whoa, chill out!'
    elsif remark.rstrip[-1] == '?'
      'Sure.'
    elsif remark.scan(/\w/).length == 0
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end

module BookKeeping
  VERSION = 1
end
