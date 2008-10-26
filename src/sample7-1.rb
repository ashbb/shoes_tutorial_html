# sample7-1.rb
Shoes.app :width => 235, :height => 80 do
  para 'password: '
  @el = edit_line :width => 100, :secret => true
  button('ok'){@input.replace em(@el.text)}
  @input = para ''
end