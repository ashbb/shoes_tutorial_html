# sample52.rb
require 'sample52-render'

Shoes.app :width => 420, :height => 350, :title => 'Mini Adventure Game' do
  extend Render
  
  show_map
  show_hunter
  
  keypress do |k|
    case k
      when 'n' then move_hunter 0, -100
      when 's' then move_hunter 0, 100
      when 'w' then move_hunter -100, 0
      when 'e' then move_hunter 100, 0
      else
    end and @msg.text = ''  if can_go? k.to_s  # Need to add .to_s for opening console window. It looks like a bug, though...
    
    case k
      when 'l'
        @msg.text = "I am in the #{room_name}"
        alert 'Congrats!' or exit  if can_exit?
      when 't' then @msg.text = "Got a star!!"  if got_star?
      else
    end
  end
end