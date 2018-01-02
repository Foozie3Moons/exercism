class Integer
  NUMERAL_MAP = {
    1000 =>  'M', 900 => 'CM', 500 => 'D',
    400  => 'CD', 100 => 'C',   90 => 'XC',
    50   => 'L',   40 => 'XL',  10 => 'X',
    5    => 'V',    4 => 'IV',   1 => 'I'
  }

  def to_roman
    num = self
    numeral_map.map do |k,v|
      
    end
    ones = []
    numeral = []
    self.times {|x| ones.push 1}
    until ones.empty?
      if ones.length >= 1000
        ones.slice! 0, 1000
        numeral.push 'M'
      elsif ones.length >= 900
        ones.slice! 9, 900
        numeral.push 'CM'
      elsif ones.length >= 500
        ones.slice! 0, 500
        numeral.push 'D'
      elsif ones.length >= 400
        ones.slice! 0, 400
        numeral.push 'CD'
      elsif ones.length >= 100
        ones.slice! 0, 100
        numeral.push 'C'
      elsif ones.length >= 90
        ones.slice! 0, 90
        numeral.push 'XC'
      elsif ones.length >= 50
        ones.slice! 0, 50
        numeral.push 'L'
      elsif ones.length >= 40
        ones.slice! 0, 40
        numeral.push 'XL'
      elsif ones.length >= 10
        ones.slice! 0, 10
        numeral.push 'X'
      elsif ones.length >= 9
        ones.slice! 0, 9
        numeral.push 'IX'
      elsif ones.length >= 5
        ones.slice! 0, 5
        numeral.push 'V'
      elsif ones.length >= 4
        ones.slice! 0, 4
        numeral.push 'IV'
      else
        ones.slice! 0, 1
        numeral.push 'I'
      end
    end
    return numerals.join
  end
end

class RomanNumeral

  def self.from_int

  end
end

module BookKeeping
  VERSION = 2
end
