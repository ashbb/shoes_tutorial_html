# sample71-1.rb
Shoes.app do
  stack do
    para "blue is #{blue.inspect}" if rgb(0, 0, 255) == blue
    para "red is #{red.inspect}" if rgb(255, 0, 0) == red
    para "yellow is #{yellow.inspect}" if rgb(255, 255, 0) == yellow
    para "Umm... red equal blue???" if red == blue
    para "Umm... blue equal yellow???" if blue == yellow
    para "Umm... yellow equal red???" if yellow == red
  end
end
  