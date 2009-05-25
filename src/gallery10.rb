# gallery10.rb
# http://www.vergenet.net/~conrad/boids/pseudocode.html
require 'matrix'
require 'gallery10-image'
require 'gallery10-rules'

Shoes.app :title => 'A Very Simple Boids v0.1' do
  extend Rules
  @boids = []
  N.times do
    x, y = rand(200), rand(200)
    vx, vy = rand(2), rand(2)
    @boids << image('../images/gallery10-kamome.png', 
      :left => x, :top => y, :pos => Vector[x, y], :vel => Vector[vx, vy])
  end
  
  animate 12 do
    @boids.each do |boid|
      boid.vel = boid.vel + rule1(boid) + rule2(boid) + rule3(boid) + rule4(boid)
      boid.pos = boid.pos + boid.vel
      boid.move boid.x, boid.y
    end
  end
end