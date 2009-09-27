# sample75.rb
Shoes.app :width => 330, :height => 230, 
  :title => 'Building Shoes for Windows!' do
    
  background "#D0A".."#F90", :angle => 90
  style Para, :stroke => white, :size => 14, :weight => 'bold'
  
  stack do
    para "RELEASE_NAME: ",  RELEASE_NAME
    para "RELEASE_ID: ", RELEASE_ID
    para "REVISION: ", REVISION
    para "RUBY_PLATFORM: ", RUBY_PLATFORM
    para "RUBY_VERSION: ", RUBY_VERSION
  end
end