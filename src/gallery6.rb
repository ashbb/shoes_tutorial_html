# gallery6.rb
# Ruby Quiz 197 Midpoint Displacement
# http://rubyquiz.strd6.com/quizzes/197/
require 'enumerator'
POINTS = [[600, 0], [0, 0], [0, 220]]

Shoes.app :title => 'Midpoint Displacement v0.1'do  
  def midpoint_displacement
    create_stars
    points = [[0, 220], [600, 220]]
    n = 2
      
    mk_midpoints = proc do
      tmp = [points[0]]
      n /= 2.0
      points.each_cons 2 do |x1, x2|
        n_rand = n * 2 * rand - n
        n_rand = n_rand.abs if n == 1
        y = (x1[1] + x2[1]) / 2.0  
        tmp << [(x1[0] + x2[0]) / 2.0, y + y * n_rand] << x2
      end
      points = tmp
    end
      
    t = every 1 do |i|
      @mt.remove if @mt
      mk_midpoints.call
      @mt = shape :top => 100 do
        (points+POINTS).each_with_index do |e, j|
          x, y = e
          move_to(x, y) if j == 0
          line_to x, 400 - y
        end
      end
      t.stop if i > 7
    end
  end
  
  def position radius, t
    angle = 2 * Math::PI * t / (24 * 60) - Math::PI / 2
    x, y = 300 + radius * Math.cos(angle), 250 + radius * Math.sin(angle)
    [x.to_i, y.to_i]
  end  
  
  def create_stars
    50.times do
      r, t = rand(300), rand(24 * 60)
      x, y = position(r, t)
      @stars << star(x, y, 5, outer = 1 + rand(10), outer / 2, :fill => white, 
                     :stroke => white, :r => r, :t => t)
    end
    @a = animate(24){|i| move_stars i}
  end
  
  def move_stars i
    @stars.each do |s|
      x, y = position(s.style[:r], s.style[:t] + i)
      s.style :left => x, :top => y
    end
  end
  
  background teal..white
  @stars = []
  midpoint_displacement
  
  button 'one more time' do
    (@stars + [@a, @mt]).each{|s| s.remove}
    midpoint_displacement
  end
end
