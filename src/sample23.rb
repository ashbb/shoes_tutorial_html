# sample23.rb
Shoes.app :width => 140, :height => 120 do
  fill yellow
  shape :left => 30, :top => 30 do
    line_to 50, 30
    curve_to 100, 100, 10, 20, 100, 50
    line_to 20, 100
    line_to 30, 30
  end
end