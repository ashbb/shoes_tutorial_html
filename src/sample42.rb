# sample42.rb
Shoes.app :width => 400, :height => 410 do
  src = IO.read(ARGV[0])
  background deepskyblue
  
  stack do
    caption strong ":state >> string"
    para '# sample42.rb'
  end
  
  eb = edit_box :text => src, :width => 1.0, :height => 0.75, :state => 'readonly'
  
  button('edit'){eb.state = eb.state ? nil : 'readonly'}
  
  b1 = button 'save', :state => 'disabled' do
    file = ask_save_file
    open(file, 'wb'){|f| f.puts eb.text}  if file
  end
  
  b2 = button 'password' do
    pw = ask 'Enter your password: ', :secret => true
    (b1.state = nil; b2.state = 'disabled')  if pw == 'Ruby&Shoes'
  end
end