# sample9.rb
Shoes.app :width => 200, :height => 140 do
  background '#FF9900'
  background rgb(192, 128, 0), :left => 40
  background gray(0.6), :left => 80
  background red, :left => 120
  background '#FAD'..'#ADD', :left => 160
  border '../images/loogink.png', :strokewidth => 15
end