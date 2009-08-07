#zoom.rb
module Zoom
  def self.extended mod
    mod.instance_variable_set :@app, mod
    mod.instance_variable_set :@flag, 1
  end
  
  def zoom img
    dir = img.style[:reverse] ? -1 : 1
    run = false
    a = nil
    img.click do
      run = !run
      a.remove if a
      a = @app.animate do
        img.width += 2 * @flag * dir
        img.height += 2 * @flag * dir
        img.move img.left - @flag * dir, img.top - @flag * dir
      end if run
    end
   
    @app.click{|n, | @flag *= -1 if n == 2}
  end
end
