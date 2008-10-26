# sample35.rb
Shoes.app :width => 200, :height => 100, :title => 'Arc' do
  fill green.to_s..yellow.to_s, :angle => 45
  stroke red.to_s..blue.to_s, :angle => 90
  strokewidth 10
  cap :round
  
  a = animate 12 do |i|
    @c.remove if @c
    r = i * (PI * 0.01)
    @c = arc 100, 50, 180, 60, 0, i * (PI * 0.01)
    a.stop if r >= TWO_PI
  end
end