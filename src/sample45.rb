# sample45.rb
Shoes.app :width => 200, :height => 115 do
  background darkred..darkslategray, :angle => 90
  para IO.read('hello_wold_utf8.txt'), :font => "MS UI Gothic", :stroke => white
end