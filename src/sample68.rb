# sample68.rb
W, H = 600, 450

class Sheep < Widget
  def initialize x
    @s = oval x, H - 15, 15, :fill => white, :strokewidth => 3
    @a = animate(20) do
      @s.move @s.left, @s.top - [0, 0, 15, 30, 45, 60][rand(6)]
      (@s.move(@s.left, -5); @a.stop; para 'baa!', :left => @s.left, :top => 0) if @s.top < 0
    end
  end
  
  def pos
    return @s.left, @s.top
  end
  
  def woofed
    @s.hide
    @a.remove
  end
  
  def hidden?
    @s.hidden
  end
end

Shoes.app :width => W, :height => H do
  def dog_catch_sheep s
    return if s.hidden?
    x, y = s.pos
    s.woofed
    msg = para 'Woof!', :left => x, :top => y, :stroke => red, :weight => 'bold'
    timer(1){msg.remove}
    star x, y, 12, 10, 7, :fill => deepskyblue, :stroke => white
    oval x, H - 15, 15
    @caught += 1
  end
  
  @caught = 0
  background '../images/pasture.jpg'
  border black, :strokewidth => 5
  sheeps = []
  25.times{|i| sheeps << sheep(30 + 15 * i)}
  
  dog = oval 300, 210, 25, :fill => yellow, :strokewidth => 3
  keypress do |key|
    x, y = 0, 0
    case key
      when :up then y = -15
      when :down then y = 15
      when :left then x = -15
      when :right then x = 15
      else
    end
    dog.move dog.left + x, dog.top + y
    sheeps.each{|s| dog_catch_sheep(s) if [dog.left, dog.top] == s.pos}
    reached = 0
    sheeps.each{|s| reached += 1 if s.pos[1] == -5}
    alert("Dog caught #{@caught} sheep.") or exit if @caught + reached == 25
  end
end
