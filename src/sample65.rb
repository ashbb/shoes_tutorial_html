# sample65.rb
Shoes.app :width => 400, :height => 50 do
  p1 = para
  p2 = para
  p3 = para
  p4 = para
  button('case 1'){self.clipboard = p1.text}                                #=> crash
  button('case 2'){self.clipboard = p2.text.eql?('') ? '' : p2.text }       #=> not crash
  button('case 3'){self.clipboard = p3.text.eql?('') ? p3.text : p3.text }  #=> crash
  button('case 4'){self.clipboard = p4.text.equal?('') ? '' : p4.text }     #=> crash
end
