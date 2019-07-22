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
   
 end 
 
end
