# gallery5.rb
Shoes.app :width => 175, :height => 160 do
  background tan
  st = {:left => 10, :top => 10}
  
  @images = []
  1.upto 60 do |i|
    n = '00' + i.to_s
    n = n[-3..-1]
    @images << image("potato_chopping/1258_s#{n}.gif").hide
  end
  
  @images.each{|img| img.style st}
  
  def potacho
    @images[59].hide
    a = animate 12 do |i|
      @images[i].show
      @images[i-1].hide if i > 0
      a.stop if i > 58
    end
  end
  
  button 'start', :left => 10, :bottom => 0 do
    potacho
  end
end