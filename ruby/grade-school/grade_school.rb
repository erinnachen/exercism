class School
  VERSION = 1

  attr_reader :roster
  def initialize
    @roster = {}
  end

  def add(name, grade)
    if roster[grade]
      roster[grade] << name
      roster[grade].sort!
    else
      roster[grade] = [name]
    end
  end

  def grade(grade_no)
    return [] unless roster[grade_no]
    roster[grade_no]
  end

  def to_h
    roster.sort.to_h
  end
end
