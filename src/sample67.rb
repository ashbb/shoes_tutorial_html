# sample67.rb
Riddles =<<-EOS
What letter is a drink? --> t
What has nothing but a head and a tail? --> coin
What is it that by losing an eye has nothing left but a nose? --> noise
What bird can lift the heaviest weight? --> crane
What is broken when you name it? --> silence
What is a foreign ant? --> important
What lives on its own substance and dies when it devours itself? --> candle
Yesterday is always before today. But there is a place where yesterday always follows today. Where? --> dictionary
How many cookies can you eat on an empty stomach? --> one
What clothing does a house wear? --> address
EOS
Nums = (0..9).sort_by{rand}

Shoes.app :width => 400, :height => 410, :title => 'Riddles r0.5', :resizable => false do
  def set_riddle
    @num = Nums.pop
    alert('*waves*') or exit unless @num
    @q.text, @a = Riddles.split("\n")[@num].split(' --> ')
    @you.text = nil if @you
  end
  
  def set_score s
    x = @a.chomp == @you.text ? @i += 25 : @j += 25
    s.move x, 390
  end
  
  background orange..gold
  title 'Riddles in Shoes', :align => 'center'
  line 10, 55, 390, 55, :strokewidth => 5
  stars = []
  
  subtitle 'Question', :left => 10, :top => 90
  @q = tagline '', :left => 20, :top => 130, :width => 360, :stroke => white
  set_riddle
  
  subtitle 'Answer', :left => 10, :top => 260
  @you = edit_line :left => 20, :top => 310, :width => 200
  button 'OK', :left => 225, :top => 310 do
    s = stars[@num]
    a = animate do |i|
      s.move s.left, s.top + i
      (a.remove; set_score(s); set_riddle) if s.top > 320
    end
  end
  
  subtitle 'Score', :left => 10, :top => 340
  para 'good job', :left => 10, :top => 380, :width => 100, :stroke => white
  para 'how unlucky', :left => 210, :top => 380, :width => 100, :stroke => white
  @i, @j = 0, 200
  
  10.times{|i| stars << star(100+ 30*i, 80, 12, 10, 7)}  
end
