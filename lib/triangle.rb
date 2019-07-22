class Triangle
 attr_accessor :side_one, :side_two, :side_three
 @sides = [] 
 
 def initialize(side_one,side_two,side_three)
   @side_one = side_one
   @side_two = side_two
   @side_three = side_three
   @sides = [side_one,side_two,side_three]
 end 
 
   def kind
    if x == 0 || y == 0 || z == 0
      raise TriangleError
    elsif x + y <= z || x + z <= y || y + z <= x
      raise TriangleError
    elsif x == y && y == z
      kind = :equilateral
    elsif x == y && x != z || y == z && y != x || x == z && x != y
      kind = :isosceles
    else
      kind = :scalene
    end
  end
end

class TriangleError < StandardError
end