# sample72-2.rb
Shoes.app :width => 200, :height => 100 do
  Thread.start do
    [0, 5, 1, 5, 2, 10, 1].each do |ti|
      para ti
      sleep ti
    end
  end
end

