# sample36.rb
class Shoes::Creature < Shoes::Widget
 def initialize
   msg = para '', :stroke => white
   c = image '../images/yar.png'
   yield c, msg
 end
end

Shoes.app :width => 140, :height => 70 do
 flow :left => 10, :top => 10 do
   background blue.to_s..green.to_s, :width => 100, :height => 30
   creature  do |c, msg|
     c.click do
       msg.text = 'Uhhhh...'
       a = animate(20){|i| c.rotate(-15); a.stop if i > 22}
     end
     c.hover{msg.text = 'hello'}
     c.leave{msg.text = ''}
   end
 end
end