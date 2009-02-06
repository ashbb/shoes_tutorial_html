# sample64.rb
Shoes.app :width => 300, :height => 300 do
  def swap s1, s2
    tmp = s2.style.to_a
    s1.style.to_a.each{|k, v| s2.style k => v}
    tmp.each{|k, v| s1.style k => v}
  end

  nostroke
  r1 = rect 50, 50, 100, 100, :fill => mediumslateblue
  r2 = rect 100, 100, 100, 100, :fill => sandybrown
  r3 = rect 150, 150, 100, 100, :fill => orchid
  
  button('swap 1-2'){swap r1, r2}
  button('swap 2-3'){swap r2, r3}
  button('swap 1-3'){swap r1, r3}
end
  