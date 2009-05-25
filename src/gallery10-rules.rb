# gallery10-rules.rb
N = 12
BOUND = 3

module Rules
  def rule1 boid
    c = @boids.collect{|b| b.pos}.inject{|i, j| i + j} - boid.pos
    c *= 1 / (N - 1.0)
    (c - boid.pos) * 0.01
  end
  
  def rule2 boid
    c = Vector[0, 0]
    @boids.each do |b|
      dist = b.pos - boid.pos
      (c -= b.pos - boid.pos) if (b != boid and dist[0].to_i.abs < 5 and dist[1].to_i.abs < 5)
    end
    c
  end
  
  def rule3 boid
    c = @boids.collect{|b| b.vel}.inject{|i, j| i + j} - boid.vel
    c *= 1 / (N - 1.0)
    (c - boid.vel) * (1 / 16.0)
  end
  
  def rule4 boid
    vx, vy = 0, 0
    x, y = boid.pos[0], boid.pos[1]
    vx = BOUND if x < 20
    vx = -BOUND if x > 580
    vy = BOUND if y < 20
    vy = -BOUND if y > 480
    Vector[vx, vy]
  end
end
