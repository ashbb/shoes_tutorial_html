# sample91.rb
Shoes.app :width => 300, :height => 60 do
  button('OK'){@msg.text = @e.text}
  @e = list_box :items => ['blue', 'red', 'yellow'], :height => 30
  @msg = para ''
end  