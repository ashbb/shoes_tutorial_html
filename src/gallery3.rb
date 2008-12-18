# Gallery3.rb
Shoes.app :title => "Live Code", :width => 500, :height => 240, :resizable => false do
  background purple..white
 
txt =<<-EOS
  def get_random_color
    send COLORS.keys.map{|sym|sym.to_s}[rand(COLORS.keys.size)]
  end
  get_random_color
EOS
 
  title 'Random Colors', :left => 10, :stroke => white
  para "Rewrite the code whatever you want!\nChange colors at once\nwhen you write correct code." ,
         :left => 10 , :top => 60, :width => 540
 
  code = edit_box txt , :left => 10 , :top => 140 , :width => 360 , :height => 70
 
  every(1){oval width - 130, 30, 100 , :stroke => eval(code.text), :strokewidth => 20, :fill => eval(code.text)}
end
 