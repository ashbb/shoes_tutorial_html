#sample54.rb
Shoes.app :width => 150, :height => 150 do
  def blur_creature img
    a = animate 6 do |i|
      name, top, left = img.style[:name], img.style[:top], img.style[:left]
      img.remove
      img = image name, :name => name, :top => top, :left => left
      img.blur 20 - i
      img.show
      a.stop if i > 20
    end
  end
  
  click do
    clear do
      2.times do |i|
        name = "../images/#{%w[loogink cy kamome shaha yar][rand(5)]}.png"
        blur_creature image(name, :name => name, :top => 20 + i * 60, :left => 20 + i * 60).hide
      end
    end
  end
end