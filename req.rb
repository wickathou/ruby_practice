module Algebra
  def suma(x)
    x+x
  end
end

include Algebra

s = 1

class Algo
  attr_reader :x
  def initialize
    @x = suma(1)
  end
end

p suma(1)

a1 = Algo.new

p a1.x