# sample26.rb
Shoes.app :width => 400, :height => 250 do
  def sampling
    stack(:width => 1.0){para 'p: pause  r: restart'}
    #stack(:width => 0.5){@o = oval 0, 0, 50}
    stack(:width => 0.5){@r = rect 0, 0, 50, 50, 10}
    stack(:width => 0.5){@p = para ''}
    
    @a = every(1) do
      @r.style :width => 10 + rand(100), :height => 10 + rand(100),
                  :curve => rand(20),
                  :fill => send( COLORS.keys[rand COLORS.keys.length] ),
                  :strokewidth => rand(10),
                  :stroke => send( COLORS.keys[rand COLORS.keys.length])
      @r.move rand(100), rand(100)
      @p.replace @r.style.to_a.map{|e| e.join(': ')}.join("\n")
    end
  end
  
  sampling
  keypress do |k|
    case k
      when 'p'
        @a.stop
      when 'r'
        @a.stop if @a
        clear{sampling}
      else
    end
  end
end
