# sample72-3.rb
Shoes.app :width => 200, :height => 100 do
    time_interval = [0, 5, 1, 5, 2, 10, 1]
    Thread.new do
      a = animate 100 do
        ti = time_interval.shift
        para ti
        sleep ti
        a.remove if time_interval.empty?
      end
    end
end
