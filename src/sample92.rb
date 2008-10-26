# sample92.rb
Shoes.app :width => 150, :height => 100 do
  @msg = para ''
  nostroke
 
  @img = image :width => 20, :height => 20, :left => 30, :top => 30 do
    oval :radius => 10, :fill => red
  end
  @img.hover{ @msg.replace 'hello' }
  @img.leave{ @msg.replace '' }
 
  @o = oval :left => 60, :top => 60, :radius => 10, :fill => blue
  @o.hover{ @msg.replace 'hi' }
  @o.leave{ @msg.replace '' }
end