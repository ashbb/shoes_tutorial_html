# gallery4.rb
Shoes.app :title => "ManWithHat - An xkcd viewer" do
 
  def get_strip_details page
    system "ruby gallery4-1.rb #{page}"
    @strip.path, @funny.text, @title.text = IO.readlines('xkcd_tmp.viewer')
  end
 
  flow :margin => 10 do
    button 'Latest strip' do
      page = 'http://xkcd.org/'
      get_strip_details page
    end
    
    button 'Random strip' do
      page = 'http://dynamic.xkcd.com/comic/random/'
      get_strip_details page
    end
 
    stack do
      @title = caption
      @funny = para
      @strip = image '../images/space.png'
      @disclaimer = para em 'All cartoons and texts used in '\
                            'this application were made by xkcd.com.'
    end
  end
end