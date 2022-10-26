class Triangle
  # write code here
  def initialize a, b, c
    @a=a
    @b=b
    @c=c
  end

  def kind 
    if (@a>0 and @b>0 and @c>0 and (@a+@b)>@c and (@b+@c)>@a and (@a+@c)>@b)
      if @a==@b and @b==@c and @a==@c 
        return :equilateral
      elsif (@a==@b ||@a==@c ||@b==@c)
        return :isosceles
      elsif (@a!=@b and @b!=@c and @a!=@c)
        return :scalene
      end
    
    else
      begin
        raise TriangleError
      end
    end

  end

  class TriangleError < StandardError
    def message
      "invalid triangle"
    end
  end
end

puts Triangle.new(4,4,4).kind