# mini-footracer-2nd.rb
Shoes.app :width => 300, :height => 200 do
  def run racer
    racer.left + rand(racer.style[:speed])
  end
  
  line 160, 40, 160, 110
  tom = oval :fill => red, :left => 0, :top => 50, :radius => 5, :speed => 15, :name => 'Tom'
  ash = oval :fill => blue, :left => 100, :top => 100, :radius => 5, :speed => 6, :name => 'Ash'
  
  a = animate do
    tom.move run(tom), 50
    ash.move run(ash), 100
    winner = tom.left > ash.left ? tom : ash
    (a.stop; para winner.style[:name]) if winner.left > 150
  end
end
