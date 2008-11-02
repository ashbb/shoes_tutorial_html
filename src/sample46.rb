# sample46.rb
Shoes.app :title => 'parent', :width => 300, :height => 200 do
  def open_new_window
    window  :title => 'child', :width => 200, :height => 200 do
      button('parent'){owner.hello green}
      button('child'){owner.hello green, self}
    end
  end
  
  def hello color, win = nil
    win ||= self
    @n ||= 0
    @n += 1
    win.para strong("#{win}--#{@n}\n"), :stroke => color
  end
  
  button('parent'){hello red}
  button('child'){hello red, @w}
  para link('open a new window'){@w = open_new_window}
end
