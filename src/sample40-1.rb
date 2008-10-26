# sample40-1.rb
Shoes.app  do
  stack :width => 0.3 do
    nofill
    strokewidth 2
    oval 50, 50, 1, :stroke => red, :fill => red
    @o = oval 50, 50, 50, :stroke => blue, :center => false, :oops => true
    @p1 = para '', :top => 150
  end
  
  stack :width => 0.3 do
    nofill
    strokewidth 2
    oval 50, 50, 1, :stroke => red, :fill => red
    @r = rect 50, 50, 50, 50, :stroke => green, :center => true, :oops => true
    @p2 = para '', :top => 150
  end
  
  stack :width => 0.4 do
    nofill
    strokewidth 2
    oval 50, 50, 1, :stroke => red, :fill => red
    @s = star 50, 50, 5, 30, 20, :stroke => black, :center => false, :oops => true
    @p3 = para '', :top => 150
  end
  
  @p1.text = @o.style.map{|e| e.join(': ')}.sort.join("\n")
  @p2.text = @r.style.map{|e| e.join(': ')}.sort.join("\n")
  @p3.text = @s.style.map{|e| e.join(': ')}.sort.join("\n")
end
