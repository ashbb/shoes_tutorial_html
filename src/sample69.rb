# sample69.rb
class Sheep
  attr_writer :avatar
  
  def draw x, y
    @avatar.move x, y
  end
end
 
Shoes.app :width => 150, :height => 100 do
  s = Sheep.new
  s.avatar = oval 0, 0, 20, 20
  
  a = animate do |i|
    s.draw i, i
    a.stop if i > 50
  end
end
