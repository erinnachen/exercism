class Triangle
  attr_reader :sides
  def initialize(a, b, c)
    @sides = [a, b, c]
    raise TriangleError unless triangle?(sides)
  end


  def kind
    return :equilateral if sides.all? {|side| side == sides.first}
    return :isosceles if sides.uniq.count == 2
    :scalene
  end

  def triangle?(sides)
    a, b, c = sides
    return false unless sides.all? {|side| side > 0}
    return false if a + b <= c
    return false if a + c <= b
    return false if b + c <= a
    true
  end
end

class TriangleError < StandardError
end
