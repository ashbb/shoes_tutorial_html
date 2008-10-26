# sample21.rb
Shoes.app :width => 250, :height => 40 do
  @info = para 'NO KEY is PRESSED.'
  keypress{|key| @info.text = "#{key.inspect} was PRESSED."}
end
