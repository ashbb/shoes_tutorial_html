# sample53-2.rb
module ExImage
  def small
    self.style :width => self.width / 2, :height => self.height / 2
  end
  
  def big
    self.style :width => self.width * 2, :height => self.height * 2
  end
end

PATH = '../images/yar.png'

Shoes.app :width => 250, :height => 150 do
  w, h = imagesize(PATH)
  img = image PATH, :width => w, :height => h, :name => PATH.split('/').last
  img.extend ExImage
  msg = para 'ready', :left => w, :top => h
  every 3 do
    img.style[:width] > w ? img.small : img.big
    msg.text = "#{img.style[:name]} width is : #{img.style[:width]}" + "\n" +
               "#{img.style[:name]} height is : #{img.style[:height]}"
  end
end
  