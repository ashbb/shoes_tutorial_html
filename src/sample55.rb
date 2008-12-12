# sample55.rb
Shoes.app :width => 200, :height => 200 do
  Shoes.show_log
  debug 'open the Shoes console window'
  
  # write your app code below
  background coral..crimson
  para strong 'This is a test program..', :stroke => white

  info DIR
  button 'debug', :bottom => 0, :left => 0 do
    debug 'hello'
  end
end
