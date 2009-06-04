# sample72-1.rb
Shoes.app :width => 200, :height => 100 do
    time_interval = [5, 1, 5, 2, 10, 1]
    @ti = 0
    a = animate 100 do
      m = time_interval.shift
      para m
      sleep @ti
      @ti = m
      a.remove if time_interval.empty?
    end
end
