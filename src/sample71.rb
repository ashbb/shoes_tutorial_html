# sample71.rb
Shoes.app :width => 200, :height => 202 do
  def around x, y, n
    ret = []
    return [[x, y]] if n < 1
    [y - n, y + n].each{|j| ((x - n)..(x + n)).each{|i| ret << [i, j]}}
    [x - n, x + n].each{|i| ((y - n + 1)..(y + n - 1)).each{|j| ret << [i, j]}}
    ret
  end

  img = image :width => 200, :height => 200 do
    oval 10, 10, 90, :fill => yellow
    line 0, 60, 80, 60, :stroke => blue, :strokewidth => 10
    oval 100, 70, 90, :fill => red
    line 90, 130, 170, 130, :stroke => blue, :strokewidth => 10
  end

  color = edit_line 'black', :left => 5, :top => 170, :width => 100

  click do
    b, l, t = self.mouse
    20.times do |n|
      around(l, t, n).each do |x, y|
        oval(x, y, 1, :stroke => green) if img[x, y] == eval(color.text)
      end
      oval l, t, 1, :stroke => black
    end
  end
end
  