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
   if (negative? == true || valid? == false)
     raise TriangleError
     elsif(equilateral?)
     :equilateral
     elsif(isosceles?)
     :isosceles
     elsif(scalene)
     :scalene
   end 
 end
 
 def negative?
   @sides.each do {|length| 
    if(length <= 0) return true 
    end  
  end 
end

def equilateral?
    (@side1 == @side2) && (@side1 == @side3)
  end

  def scalene?
    (@side1 != @side2) && (@side1!= @side3) && (@side2 != @side3)
  end

  def isosceles?
    (@side2 == @side3) || (@side1 == @side2) || (@side1 = @side3)
  end

  def valid?
    (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)
  end
end 
class TriangleError < StandardError

end
