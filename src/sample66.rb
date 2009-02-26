# sample66.rb
Shoes.app :width => 200, :height => 200 do
  background tan
  st = {:left => 10, :top => 10, :width => 180, :height => 180}
  
  slots = []
  10.times do |i|
    slots << stack do
      color = COLORS.keys[rand(COLORS.keys.length)]
      background COLORS[color], :curve => 20
      para i
      para color.to_s
    end.hide
  end
  
  slots.each{|s| s.style st}
  
  every 1 do |i|
    hit = slots[i%10]
    slots.each{|s| s == hit ? s.show : s.hide} 
  end
end