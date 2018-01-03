class School
  def initialize
    @roster = []
  end

  def add(student, grade)
    @roster << {:name => student, :grade => grade}
  end

  def students(grade)
    @roster.select { |students| students[:grade] == grade }.map { |students| students[:name] }.sort
  end

  def students_by_grade
    @roster.group_by { |students| students[:grade] }.sort
      .flat_map {|k,v| {
          :grade => k,
          :students => v.map {|student| student[:name]}.sort
        }
      }
  end
end

module BookKeeping
  VERSION = 3
end
