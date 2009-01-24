# gallery2.rb
Shoes.app :width => 200, :height => 200 do
  background mintcream, :width => 1.0, :height => 1.0
  @s = stack :margin => 5, :width => 1.0, :height => 1.0 do
    background '../images/shell.png', :curve => 5
    @line = para '', :stroke => white, :weight => 'bold'
    @line.cursor = -1
  end
  
  keypress do |k|
    case k
      when String, "\n"
        @line.text += k
      when :backspace
        @line.text = @line.text[0..-2]
      else
    end
  end
end

