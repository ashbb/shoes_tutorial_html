#sample63.rb
Shoes.app :title => "Little Helper v0.2", :width => 210, :height => 325 do

  @money = para '', :top => 250, :left => 10
  
  def calculate h = @hours.text.to_f, w = @wage.text.to_f, t = @tax.text.to_f
    @money.text = h * w * ((100 - t) / 100.0) * 4.3
  end
 
  stack :margin => 10  do
    caption "Awful numbers"
 
    para "Hours/week " 
    @hours = edit_line(15, :width => 50 ){calculate}
 
    para "Money/hour"
    @wage = edit_line(16, :width => 50){calculate}
 
    para "Tax (in %)"
    @tax = edit_line(20, :width => 50){calculate}
 
    caption "Rags or riches"
  end
  
  calculate 15, 16, 20
end
