# sample11.rb
class PhotoFrame < Shoes
  url '/', :index
  url '/loogink', :loogink
  url '/cy', :cy
  
  def index
    eval(['loogink', 'cy'][rand 2])
  end
  
  def loogink
    background tomato
    image '../images/loogink.png', :left => 70, :top => 10
    para "\n" * 3
    para strong 'She is Loogink. :)', :stroke => white
    para '->', link(strong('Cy'), :click => '/cy')
  end
  
  def cy
    background paleturquoise
    image '../images/cy.png', :left => 70, :top => 10
    para "\n" * 3
    para strong 'He is Cy. :)', :stroke => white
    para '  ->', link(strong('loogink'), :click => '/loogink')
  end
end

Shoes.app :width => 200, :height => 120, :title => 'Photo Frame'