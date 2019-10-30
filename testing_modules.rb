module Geometry
  def radius(d)
    d/2
  end
end

class Circle
  attr_accessor :diameter
  include Geometry
  def initialize (d)
    @diameter = d
  end
  def radii
    radius(@diameter)
  end
end

c1 = Circle.new(4)

p c1.diameter
p c1.radii
p c1.diameter = 5
p c1.radii
