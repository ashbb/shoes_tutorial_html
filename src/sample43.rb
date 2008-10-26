# sample43.rb
font "phonetica.ttf"

Shoes.app :width => 350, :height => 500 do
  background peachpuff
  font = 'Phonetica'
  slot = stack{para 'abcdefg ABCDEFG : ' + font, :font => font}
  font = list_box :items => (Shoes::FONTS << "Phonetica"), :height => 30
  button 'change' do
    slot.append{para 'abcdefg ABCDEFG : ' + font.text, :font => font.text}
  end
end
