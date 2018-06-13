class Triangle
  # write code here
  attr_reader :side_a, :side_b, :side_c
  def initialize(side_a:, side_b:, side_c:)
    @side_a = side_a
    @side_b= side_b
    @side_c = side_c
  end

  def kind
    if side_a == side_b && side_b == side_c
      :equilateral
    elsif side_a == side_b || side_b == side_c || side_a == side_c
      :isoceles
    else
      :scalene
    end
  end

    def validate_triangle
      valid_triangle = (side_a + side_b>side_c), (side_b + side_c> side_a), (side_c +side_a > side_b)
      [side_a, side_b, side_c].each {|side| if side<=0alid_triangle << false}
      raise TriangleError if valid_triangle << false
    end
  end

end

    class TriangleError< StandardError
      def message
      puts The sum of the lengths of any two sides of a triangle always exceeds the length of the third side
      end
    end
 end
