class Year
  def self.leap?(year)
    return year % 4 == 0 unless year % 100 == 0 && year % 400 != 0
  end
end

module BookKeeping
  VERSION = 3
end
