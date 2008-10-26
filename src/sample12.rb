# sample12.rb
Shoes.app :title => 'RC', :width => 100, :height => 80 do
  def random_creatures
    background rgb rand(256), rand(256), rand(256)
    name = %w[loogink cy yar kamome shaha][rand 5]
    image '../images/' + name + '.png', :left => 30, :top => 10
  end
  
  random_creatures
  
  every(5){clear{random_creatures}}
end

