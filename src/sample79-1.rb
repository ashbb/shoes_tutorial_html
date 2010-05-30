# sample79-1.rb
Shoes.app width: 360, height: 360 do
  bgs = []
  9.times do |i|
    bgs << background(pink, top: 30+34*i, left: 30, width: 270, height: 30).hide
  end
  
  s = stack top: 30, left: 30, width: 300, height: 300, scroll: true do
    1000.times{|i| para "phone number #{i}"}
  end
  
  9.times do |i|
    flow top: 30+34*i, left: 30, width: 270, height: 30 do
      border black
      hover{bgs[i].show}
      leave{bgs[i].hide}
      click{alert "hi! no. #{s.scroll_top.zero? ? i : (s.scroll_top + 10) / 34 + i}"}
    end
  end
end
