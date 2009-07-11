# gallery13.rb
# Mandelbrot Set No.007

Shoes.app :width => 300, :height => 302, :title => 'Mandelbrot v0.1' do
  MAX, W, H = 200, 300, 300
  x0, y0, w = 1.768606, -0.002229, 0.0000014
  a0, a1 = x0 - w, x0 + w
  b0, b1 = y0 - w, y0 + w
  
  def mandelbrot a, b
    x, y = 0.0, 0.0
    MAX.times do |i|
      x, y = x * x - y * y - a, 2.0 * x * y - b
      return [x, y, i] if (x * x + y * y) > 4.0
    end
    [x, y, false]  
  end  
 
  nostroke
  image :width => W, :height => H do
    H.times do |j|
      W.times do |i|
        a, b = a0 + i * (a1 - a0) / W, b0 + j * (b1 - b0) / H
        x, y, diverged = mandelbrot(a, b)
        #oval(i, j, 1) unless diverged
        color = diverged ? rgb(255 - diverged, x.abs, y.abs) : black
        oval i, j, 1, :fill => color
      end
    end
  end
end
