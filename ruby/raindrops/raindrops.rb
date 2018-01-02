class Raindrops
  def self.convert(int)
    str = ''
    if int % 3 == 0
      str += 'Pling'
    end
    if int % 5 == 0
      str += 'Plang'
    end
    if int % 7 == 0
      str += 'Plong'
    end
    return (str == '') ? int.to_s : str
  end
end

module BookKeeping
  VERSION = 3
end
