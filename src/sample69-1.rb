# sample69-1.rb
class Sheep
  def initialize
    @avatar = $app.oval 0, 0, 20, 20
  end
  
  attr_writer :avatar
  
  def draw x, y
    @avatar.move x, y
  end
end
 
Shoes.app :width => 150, :height => 100 do
  $app = self
  s = Sheep.new
 
  a = animate do |i|
    s.draw i, i
    a.stop if i > 50
  end
end
