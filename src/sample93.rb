# sample93.rb
Shoes.app :width => 400, :height => 75, :title => 'Lovely Creaturs' do
  background "#D0A".."#F90", :angle => 90
  x = 0
  creatures = %w(loogink yar cy kamome shaha).collect{|c| image "../images/#{c}.png", :left => x += 60}
                    
  messages =<<-EOS
Thx for reading. :)
See you!
Enjoy Ruby and Shoes!
EOS
  messages = messages.split("\n")

  msg = subtitle '', :top => 30, :stroke => white
  animate(3) do
    creatures.each{|c| c.move c.left, rand(15)}
  end
  
  creatures.each do |c|
    c.hover{msg.text = strong messages[rand(messages.length)]}
    c.leave{msg.text = ''}
  end
end