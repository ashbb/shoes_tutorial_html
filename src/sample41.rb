# sample41.rb
Shoes.app :width => 240, :height => 161, :resizable => false do
  image '../images/jellybeans.jpg'
  flow :width => 100, :height => 40, :left => 2, :top => 2, :scroll => true do
    background bisque
    30.times do |i|
      color = COLORS.keys.map{|sym|sym.to_s}.sort_by{rand}
      para "colorful jellybeans", :stroke => send(color.first)
    end
  end
end