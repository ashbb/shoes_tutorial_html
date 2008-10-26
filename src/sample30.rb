# sample30.rb
Shoes.app :width => 642, :height => 700, :resizable => false do
  COLORS.keys.map{|sym|sym.to_s}.sort.each do |color|
    flow :width => 160, :height => 20 do
      c = send(color)
      fill c
      rect 0, 0, 160, 20
      inscription color, :stroke => c.dark? ? white : black
    end
  end
end
