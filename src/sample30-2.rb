# sample30-2.rb
class ::Symbol
  def <=> other
    self.to_s <=> other.to_s
  end
end

Shoes.app :width => 642, :height => 700, :resizable => false do
  COLORS.sort_by{|sym,| sym}.each do |color, v|
    flow :width => 160, :height => 20 do
      fill v
      rect 0, 0, 160, 20
      inscription color, :stroke => v.dark? ? white : black
    end
  end
end
