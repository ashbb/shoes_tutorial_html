# sample17.rb
class Hello < Shoes
  url '/', :index
  
  def index
    para 'Hello world!', :align => 'center'
  end
end

Shoes.app :width => 150, :height => 40 