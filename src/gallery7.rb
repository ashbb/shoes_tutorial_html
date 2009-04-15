# gallery7.rb
# 55 lines Snake in Shoes
class SnakeGame < Shoes
  url '/', :index
  
  def index
    background black
    game_start
  end
  
  def game_start
    @score = para 'Score:', :stroke => white
    @pos = {:up => [0, -10], :down => [0, 10], :left => [-10, 0], :right => [10, 0]}
    @rx, @ry = proc{20 + 10*rand(56)}, proc{40 + 10*rand(44)}
    
    @foods = []
    stroke lime
    50.times{@foods << rect(@rx[], @ry[], 10, 10)}
    
    @bricks = []
    stroke deepskyblue; fill '#000099'
    50.times{@bricks << rect(@rx[], @ry[], 10, 10)}
    20.step(570, 10){|n| @bricks << rect(n, 40, 10, 10) << rect(n, 470, 10, 10)}
    40.step(470, 10){|n| @bricks << rect(10, n, 10, 10) << rect(570, n, 10, 10)}
    
    @snake = []
    stroke white; nofill
    @snake << rect(300, 100, 10, 10)
    @snake[0].stroke = red
    
    dir = :left
    @run  = animate 5 do
      keypress{|k| dir = k if @pos.keys.include? k}
      check_food
      go dir
      @score.text = "Score: #{@snake.length * 10}"
      brick? @snake[0]
    end
  end
  
  def go k
    x, y = @pos[k]
    @snake.unshift @snake.pop
    n = @snake.length > 1 ? 1 : 0
    @snake[0].move @snake[n].left + x, @snake[n].top + y
    @snake[0].stroke, @snake[n].stroke = @snake[n].stroke, @snake[0].stroke
  end
  
  def check_food
    (@snake << rect(0, 0, 10, 10)) if eat? @snake[0]
  end
  
  def eat? s
    @foods.each_with_index do |f, i|
      (f.move @rx[], @ry[]; return true) if f.left == s.left and f.top == s.top
    end
    return false
  end
  
  def brick? s
    @bricks.each do |b|
      (@run.stop; confirm('Game Over. Play again?') ? visit('/') : exit) \
        if b.left == s.left and b.top == s.top      
    end
  end
end

Shoes.app :title => 'Snake Game v0.1'
