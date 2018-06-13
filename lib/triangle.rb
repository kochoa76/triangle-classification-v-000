class Triangle
  # write code here
  attr_reader :side_a, :side_b, :side_c
  def initialize(side_a:, side_b:, side_c:)
    @side_a = side_a
    @side_b= side_b
    @side_c = side_c

    end
  end

  def kind
    if side_a == side_b == side_c
      :equilateral
    elsif side_a || side_b || side_c == side_a || side_b || side_c
      :isoceles
    else
      :scalene
    end
  end
