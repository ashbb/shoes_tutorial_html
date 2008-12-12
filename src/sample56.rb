# sample56.rb
Shoes.app :width => 200, :height => 160 do
  style Para, :align => 'center', :stroke => pink, :size => 30
  stack do
    para "hello"
    para "hello", :size => 10, :stroke => red
    para "hello"
  end
end
