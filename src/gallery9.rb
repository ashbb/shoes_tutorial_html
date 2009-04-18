# gallery9.rb
# ScatterPack: Scatters like a school of fish

class Shoes::Shape
  [:v, :flag].each do |m|
    define_method(m){style[m]}
    define_method(m.to_s + '='){|v| style m => v}
  end
end

Shoes.app :width => 300, :height => 300, :title => 'Scatter Pack v0.1' do
  nostroke; nofill
  colors = []
  5.times{colors << rgb(rand(255), rand(255), rand(255), (0.5..1.0).rand)}
  
  discs = []
  50.times do
    vx = vy = 0
    (vx, vy = (-3..3).rand, (-3..3).rand) while [vx, vy] == [0, 0]
    r = (5..100).rand
    discs << oval(rand(width - r), rand(height - r), (5..100).rand, 
               :fill => colors[rand(5)], :v => [vx, vy], :flag => true)
  end
  @area = oval 0, 0, 100, :stroke => green
  
  def disc_move disc
    vx, vy = disc.v
    nx, ny = disc.left + vx, disc.top + vy
    
    vx = -vx  if nx + disc.width > width or nx < 0
    vy = -vy  if ny + disc.width > height or ny < 0
    
    if near_mouse?(disc)
      (vx, vy = -vx * 2, -vy * 2) if disc.flag
      disc.flag = false
    else
      (vx, vy = vx / 2, vy / 2) unless disc.flag
      disc.flag = true
    end
     
    disc.move nx , ny
    disc.v = [vx, vy]
  end
  
  def near_mouse? disc
    r = disc.width / 2
    x, y = disc.left + r, disc.top + r
    Math.sqrt((mouse[1] - x)**2 + (mouse[2] - y)**2) < (@area.width / 2 + r)
  end
  
  keys = {'+' => 10, '-' => 10}
  animate 12 do
    discs.each{|disc| disc_move disc}
    @area.left = mouse[1] - @area.width / 2
    @area.top = mouse[2] - @area.width / 2
    keypress do |k|
      val = @area.width + keys[k].to_i
      @area.width = val if val > 10
    end
  end
end