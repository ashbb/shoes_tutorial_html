# sample48.rb
@blk = class Trip < Shoes
  url "/", :index
  url "/japan", :japan
  url "/india", :india
  url "/tokyo", :tokyo
  url "/pune", :pune
  
  @@win = 0

  def index 
    case @@win
      when 0
        background coral
        para strong link("Go to Japan.", :click => "/japan")
        para strong link("Go to India.", :click => "/india")
      when 1
        background crimson
        para strong link("Go to Tokyo.", :click => "/tokyo")
      when 2
        background darkorange
        para strong link("Go to Pune.", :click => "/pune")
      else
    end
  end

  def japan
    @@win = 1
    Shoes.app :title => "Japan", :width => 200, :height => 100, &@blk
    @@win = 0
    visit "/"
  end

  def india
    @@win = 2
    Shoes.app :title => "India", :width => 200, :height => 100, &@blk
    @@win = 0
    visit "/"
  end

  def tokyo
    background gold
    para strong "Welcome to Tokyo!"
  end
  
  def pune
    background darksalmon
    para strong "Welcome to Pune!"
  end
end

Shoes.app :title => "World Trip", :width => 200, :height => 100, &@blk
