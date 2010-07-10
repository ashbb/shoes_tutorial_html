# gallery14.rb
require 'bloops'

PAUSE = '4 4 4 4 4 4 2 '
M1 = 'C C G G A A 2:G F F E E D D 2:C '
M2 = 'G G F F E E 2:D'
LYRICS =<<EOS
Twinkle, twinkle, little star,
How I wonder what you are!
Up above the world so high,
Like a diamond in the sky.
Twinkle, twinkle, little star,
How I wonder what you are!
EOS

Shoes.app title: "Twinkle, Twinkle, Little Star", width: 500, height: 300 do
  background black
  
  def set_bloops b, tmp, snd, vol, sus, att, dec, mel
    b.tempo = tmp
    s = b.sound snd
    s.volume, s.sustain, s.attack, s.decay = vol, sus, att, dec
    b.tune s, mel
  end
  
  def bloops
    b = Bloops.new
    set_bloops b, 100, Bloops::SQUARE, 0.8, 0.3, 0.1, 0.3, 
      M1 + M2 * 2 + M1 + PAUSE * 2
    set_bloops b, 100, Bloops::SINE, 0.8, 0.6, 0.1, 0.2, 
      '+ ' + PAUSE + M1 + M2 * 2 + M1 + PAUSE
    set_bloops b, 100, Bloops::SAWTOOTH, 0.8, 0.6, 0.1, 0.2, 
      PAUSE * 2 + M1 + M2 * 2 + M1
    set_bloops b, 100, Bloops::NOISE, 0.2, 0.2, 0.1, 0.2, 
      PAUSE + M1 + M2 * 2 + M1 + PAUSE
    b.play
    #sleep 0.1 until b.stopped?
  end
  
  def pulse
    slot = stack
    a = animate 10 do |i|
      (a.stop; slot.remove) if i > 240
      i %= 10
      slot.clear do
        fill black(0.2 - (i * 0.02))
        strokewidth(3.0 - (i * 0.2))
        stroke white(1.0 - (i * 0.1))
        star(400 - i, 250 - i, 50, 150 +  i * 2, 70 + i * 2)
      end
    end
  end
  
  img = image left: 250, top: 100, width: 300, height: 300 do
    star(150, 150, 5, 150, 70, stroke: white, strokewidth: 10).rotate 25
  end
  
  caption LYRICS, stroke: white, left: 0, top: 0
  img.click{bloops; pulse}
end