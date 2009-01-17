# mini-footracer-1st.rb
class Racer
  def initialize name
    @name, @avatar = name, nil
    @dist, @speed = 0, 15
  end
  
  attr_reader :name, :dist
  attr_accessor :avatar
  
  def run
    @dist += rand(@speed)
  end
end

class BabyRacer < Racer
  def initialize name
    super
    @dist, @speed = 100, 6
  end
end

tom = Racer.new 'Tom'
ash = BabyRacer.new 'Ash'

Shoes.app :width => 300, :height => 200 do
  line 160, 40, 160, 110
  tom.avatar = oval :fill => red, :left => 0, :top => 50, :radius => 5
  ash.avatar = oval :fill => blue, :left => 100, :top => 100, :radius => 5
  a = animate do
    tom.avatar.move tom.run, 50
    ash.avatar.move ash.run, 100
    winner = tom.dist > ash.dist ? tom : ash
    (a.stop; para winner.name) if winner.dist > 150
  end
end
