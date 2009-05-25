# gallery10-image.rb
class Shoes::Image
  [:vel, :pos].each do |m|
    define_method(m){style[m]}
    define_method("#{m}="){|arg| style m => arg}
  end
  
  [:x, :y].each_with_index{|m, i| define_method(m){pos[i].to_i}}
end
