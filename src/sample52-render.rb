# sample52-render.rb
module Render
  ROOMS =<<-EOS
entrance:e
room1:swe
room2:w
room3:s
room4:e
room5:nwe
room6:swe
room7:nsw
exit:n
room9:n
EOS

  def show_map
    @pos = [50,  50], [150,  50], [250,  50], [350,  50],
           [50, 150], [150, 150], [250, 150], [350, 150],
                                  [250, 250], [350, 250]
    fill gold.to_s..coral.to_s
    rect :width => 400, :height => 300, :left => 10, :top => 10, :curve => 10
    stroke white
    strokewidth 4
    lines = [[0, 1], [1, 2], [1, 5], [4, 5], [5, 6], [6, 7], [7, 3], [6, 8], [7, 9]]
    lines.each{|a, b| line @pos[a][0] + 15, @pos[a][1] + 15, @pos[b][0] + 15, @pos[b][1] + 15}
  
    @rooms = @pos.collect{|x, y| rect x, y, 30, 30, :curve => 15, :fill => green}
    [0, 8].each{|n| @rooms[n].style :fill => red, :curve => 5}

    ROOMS.each_with_index do |r, i|
      name, paths = r.chomp.split(':')
      @rooms[i].style :name => name, :paths => paths
    end
  
    @star = star 365, 265, 5, 10.0, 5.0, :fill => gold, :stroke => gold
    
    @msg = para '', :left => 20, :top => 320
  end
  
  def show_hunter
    @hunter = image '../images/loogink.png', :left => @pos[0][0], :top => @pos[0][1]
    @x, @y = 50, 50
  end
  
  def move_hunter x, y
    @hunter.move @x += x, @y += y
  end
  
  def can_go? k
    @rooms[@pos.index [@hunter.left, @hunter.top]].style[:paths].index k
  end
  
  def room_name
    @rooms[@pos.index [@hunter.left, @hunter.top]].style[:name]
  end
  
  def got_star?
    return false  if @star.hidden
    if @hunter.left == @star.left - 15 and @hunter.top == @star.top - 15
      @star.hide
      @hunter.star 20, 30, 5, 10.0, 5.0, :fill => gold, :stroke => gold
    else
      false
    end
  end
  
  def can_exit?
    @pos.index([@hunter.left, @hunter.top]) == 8 and @star.hidden
  end
end