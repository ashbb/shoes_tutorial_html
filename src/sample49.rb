# sample49.rb
class Shoes::Widgy < Shoes::Widget
  def initialize opts = {}
    size = opts[:size] || 50
    fill opts[:color] || yellow
    rect 0, 0, size, size
  end
end

Shoes.app :width => 300, :height => 300 do
  w1 = widgy :left => 50, :top => 50, :color => red
  w2 = widgy :left => 50, :top => 50, :color => blue, :size => 100
  w2.move 100, 100
  w3 = widgy
  w3.left = 200
  w3.top = 200
end