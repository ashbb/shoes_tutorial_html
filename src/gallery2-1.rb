# gallery2-1.rb

Shoes.app :width => 600, :height => 80 do
  msg0 = 'Customer Number'
  para msg0, :left => 10, :top=> 30
  
  s0 = stack :left => 150, :top=> 30, :width => 100 do
    background coral, :curve => 5
    @line0 = para '', :weight => 'bold'
    @line0.cursor = -1
  end
  
  msg1 = 'Customer Name'
  para msg1, :left => 280, :top=> 30
  
  s1 = stack :left =>410, :top=> 30, :width => 150 do
    background lightgreen, :curve => 5
    @line1 = para '', :weight => 'bold'
    @line1.cursor = -1
  end
  
  flag, @msg = 0, msg0
  s0.click{flag = 0; @msg = msg0}
  s1.click{flag = 1; @msg = msg1}

  keypress do |k|
    line = flag.zero? ? @line0 : @line1
    case k
      when "\n"
        alert @msg
      when String
        line.text += k
      when :backspace
        line.text = line.text[0..-2]
      else
    end
  end
end