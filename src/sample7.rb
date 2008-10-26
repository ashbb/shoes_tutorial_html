# sample7.rb
Shoes.app :width => 250, :height => 300 do
  stack do
    @msg = para 'Hello'
    @el = edit_line "We love Ruby."
    button('ok'){ @msg.text = @el.text}
    @eb = edit_box "We love Shoes."
    button('ok'){ @msg.text = @eb.text}
  end
end