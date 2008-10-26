# sample39.rb

require 'sample39_creature'

Shoes.app :title => 'go next', :width => 300, :height => 300 do
  background moccasin, :margin=> 20, :curve => 20
  c = creature('../images/loogink.png', 50, 100)
  
  routes = [[100, 50], [150, 50], [200, 100], [200, 150], [150, 200], [100, 200], [50, 150],
            [50, 100], [150, 50], [100, 200], [50, 100]]
  i = -1
  para link('go next'){
    begin
      x, y = routes[(i+=1) % 10]
      @msg.text = "#{c.position.inspect}-->[#{x},#{y}]"
      c.glide [x, y], :line => true
    end unless c.playing?
  }

  @msg = para ''
end
