# sample51.rb
require File.join(DIR, 'lib/shoes/log')

Shoes.app :width => 200, :height => 200 do
  window{extend Shoes::LogWindow; setup}

  # write your app code below
  background orange..green
  para strong 'This is a test program..', :stroke => white
  
  info DIR
  button 'debug', :bottom => 0, :left => 0 do
    debug 'hello'
  end
end