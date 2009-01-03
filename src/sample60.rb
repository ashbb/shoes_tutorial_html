# sample60.rb
Shoes.app :width => 300, :height => 300 do
  i = 45
  button 'new'do
    i += 5
    box = rand(2) == 0 ? rect(i, i, 20) : oval(i, i, 20)
    box.style :fill => send(COLORS.keys.map{|sym|sym.to_s}[rand(COLORS.keys.size)])

    @flag = false
    box.click{@flag = true; @box = box}
    box.release{@flag = false}
    motion{|left, top| @box.move(left-10, top-10) if @flag}
  end
  
end
