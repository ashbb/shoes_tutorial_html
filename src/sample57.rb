#sample57.rb
Shoes.app :width => 200, :height => 200, :resizable => false do
  @s1 = flow :left => 10, :top => 10, :width => 100, :height => 100
  @s2 = flow :left => 90, :top => 90, :width => 100, :height => 100
  animate 24 do|i|
    @s1.background rgb(i, i, 0)
    @s2.background rgb(0, i, i)
    background rgb(i, 0, i)
  end
end
