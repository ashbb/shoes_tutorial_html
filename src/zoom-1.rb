#zoom-1.rb
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
        img.scale @flag * dir > 0 ? 1.02 : 0.98
      end if run
    end

    @app.click{|n, | @flag *= -1 if n == 2}
  end
end
