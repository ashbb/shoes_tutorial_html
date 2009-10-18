# sample53-1.rb
#class Shoes::Image; end
Shoes.app :width => 200, :height => 150, :title => 'sample53-2.rb' do
  stack do
    img = image '../images/yar.png'
    para(img.class == Shoes::Image)
    para "Shoes-0.r#{REVISION}"
  end
end
  