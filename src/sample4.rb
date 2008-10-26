# sample4.rb
Shoes.app :width => 250, :height => 150 do
  background gray
  flow :width => "90%" do
    background brown
    
    flow :width => "70%" do
      background purple
      stack do
        background green
        para "stack 0"
      end
      stack :width => "30%" do
        background red
        para "stack 1"
      end
      stack :width => "-30%" do
        background blue
        para "stack 2"
      end
    end
    
    stack :width => "20%" do
      background yellow
      para "stack 3"
    end
  end
end
      