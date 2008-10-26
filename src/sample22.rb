# sample22.rb
class Shoes::Answer < Shoes::Widget
  attr_reader :mark
  def initialize word
    para word
    @mark = image('../images/loogink.png', :width => 20, :height => 20).hide
  end
end

Shoes.app :width => 200, :height => 130 do
  stack :width => 0.5 do
    background palegreen
    para '1. apple'
    ans = answer '2. tomato'
    para '3. orange'
    button('Ans.'){ans.mark.toggle}
  end
  stack :width => 0.5 do
    background lightsteelblue
    para '1. cat'
    para '2. dog'
    ans = answer '3. bird'
    button('Ans.'){ans.mark.toggle}
  end
end
