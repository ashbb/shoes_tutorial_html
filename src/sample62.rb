# sample62.rb
  # See the following original code.
  # 05_interactivity_with_objects.rb
  # http://github.com/karmi/shoes_demonstration_apps/tree/master

class Letter < Shoes::Widget
  def initialize img
    @flag = false
    img.click{@flag = true; @img = img}
    img.release{@flag = false}
    motion{|left, top| @img.move(left-50, top-100) if @flag}
  end
end
  
Shoes.app :width => 800, :height => 600 do
  #sound = video 'assets/drumfill.aif', :width => 0, :height => 0
  para 'Input Your Name: '
  spell = edit_line
  button 'GO' do
    #sound.play
    @canvas.clear do
      spell.text.downcase.split('').each_with_index do |l, i|
        letter  image("letters/#{l}.jpg", :left => 100*(i%8), :top => 150*(i/8))
      end
    end
  end
  
  @canvas = flow do
    a = 'a'
    26.times do |l|
      letter image("letters/#{a}.jpg").move(rand(width), rand(height))
      a.next!
    end
  end
end