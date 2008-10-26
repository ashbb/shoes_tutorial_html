# sample37.rb

episode1 =<<-EOS
Episode I 
THE PHANTOM MENACE Turmoil has engulfed the Galactic Republic. The taxation of trade routes to outlying star systems is in dispute. \
Hoping to resolve the matter with a blockade of deadly battleships, the greedy Trade Federation has stopped all shipping to the small planet of Naboo. \
While the Congress of the Republic endlessly debates this alarming chain of events, the Supreme Chanccellor has secretly dispatched two Jedi Knights, the guardians of peace and justice in the galaxy, to settle the conflict... \
    [Quote]  http://www.starwars.com/episode-iii/bts/production/f20050126/indexp2.html 
EOS

Shoes.app :width => 400, :height => 380, :title => 'Episode I' do
  rect 0, 0, 400, 380, :fill => sandybrown
  rect 10, 10, 380, 360, :fill => lavender, :curve => 10
  stack do
    nostroke
    rect 10, 10, 380, 360, :fill => lightblue
    oval 50, 40, 100, :fill => green
    star 250, 245, 5, 100, 40, :fill => deeppink, :angle => 90
    mask do
      @t = para strong(episode1), :left => 15, :top => 340, :width => 380
    end
  
    @a = animate(36) do |i|
      @t.left, @t.top = 15, 340 - i
      @a.stop if i > 330
    end
  end
end
