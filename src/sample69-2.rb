# sample69-2.rb
class Sheep < Shoes::Widget
  def initialize
    oval 0, 0, 20, 20
  end
  
  def run x, y
    move x, y
  end
end
 
Shoes.app :width => 150, :height => 100 do
  s = sheep
 
  a = animate do |i|
    s.run i, i
    a.stop if i > 50
  end
end
