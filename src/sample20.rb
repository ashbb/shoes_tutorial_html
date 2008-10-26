# sample20.rb
Shoes.app :title => 'Sorter', :width => 180, :height => 80 do
  background gradient powderblue, royalblue
  msg = para '', :size => 8
  
  yar = image('../images/yar.png', :left => 60, :top => 18).click do
    self.clipboard = self.clipboard.sort unless self.clipboard.nil?
    yar.transform :center
    a = animate(24) do |i|
      yar.rotate -15
      a.stop if i > 22
    end
  end
  yar.hover{msg.text = strong('Click Yar. She sorts clipboard text!')}
  yar.leave{msg.text = ''}
end