class Triangle
  # write code here

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three

  end

  def valid_triange
    if @side_a + @side_b <= @side_c || @side_a + @side_c <= @side_b || @side_b + @side_c <= @side_a || @side_a <= 0 || @side_b <= 0 || @side_c <= 0
      return false
    else
      return true
    end
  end

  def kind()
    if self.valid_triange == false
      raise TriangleError
    elsif
      @side_one == @side_two && @side_two == @side_three
        :equilateral
      elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
        :isosceles
      elsif
      @side_one != @side_two && @side_one != @side_three && @side_two != @side_three
      :scalene
    end
  end

class TriangleError < StandardError

end

end