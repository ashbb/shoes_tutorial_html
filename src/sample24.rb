# sample24.rb
Shoes.app :width => 160, :height => 80 do
  def mask_words
    strokewidth 4
    160.times do |i|
      stroke send COLORS.keys[rand COLORS.keys.length]
      line i * 4 - 50, 0, i * 4, 80
    end
    mask :margin => 4 do
      title strong 'Shoes'
    end
  end
  
  mask_words
  every 3 do
    clear{ mask_words }
  end
end
