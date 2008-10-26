#sample31.rb
Shoes.app :width => 150, :height => 70 do
  def number_on_disk
    fill eval(@color)
    nostroke
    oval 0, 0, 30
    @l = para ''
    animate(3){@l.replace strong @i+=1, :stroke => white}
  end
  
  @color = 'blue'
  @i = 0
  @slot = flow{number_on_disk}
  
  button('chang') do
    @slot.clear
    @color = %w(green red blue yellow)[rand(4)]
    @i = 0
    @slot.append{number_on_disk}
  end
end