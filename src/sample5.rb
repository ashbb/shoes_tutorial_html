# sample5.rb
Shoes.app :width => 200, :height => 50 do
  button("Press Me", :left => 50, :top => 20) do
    alert("clicked")
  end
end
