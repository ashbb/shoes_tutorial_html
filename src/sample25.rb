# sample25.rb
Shoes.app :width => 250, :height => 76 do
  background lightsalmon
  icon = image :width => 74, :height => 74 do
    oval :width => 70, :height => 70, :fill => lightskyblue,
          :stroke => red, :left => 2, :top => 2
  end
  icon.image '../images/cy.png', :left => 10, :top => 8
  icon.star 35, 45, 5, 8, 3, :fill => hotpink, :stroke => nil
  msg = para '', :stroke => white
  
  icon.hover do
    @a = animate do
      button, left, top = self.mouse
      msg.replace strong icon[left, top]
    end
  end
  icon.leave do
    @a.stop
    msg.replace ''
  end
end
