# sample29.rb
class PhotoFrame < Shoes
  url '/', :index
  url '/(.+)', :index

  Creature = Struct.new :name, :sex, :wallpaper
  @@c = []
  @@c << Creature.new('loogink', 'She', 'tomato')
  @@c << Creature.new('cy', 'He', 'paleturquoise')

  def index n = rand(2)
    n = n.to_i
    background eval(@@c[n].wallpaper)
    image '../images/' + @@c[n].name + '.png', :left => 70, :top => 10
    para "\n" * 3
    para strong "#{@@c[n].sex} is #{@@c[n].name.capitalize}. :)", :stroke => white
    n = n.zero? ? 1 : 0
    para '->', link(strong(@@c[n].name.capitalize), :click => "/#{n}")
  end
end

Shoes.app :width => 200, :height => 120, :title => 'Photo Frame'