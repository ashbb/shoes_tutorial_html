# sample59.rb
URL = 'http://jp.youtube.com/watch?v=8hBrRZuXjHA'

Shoes.app :width => 420, :height => 330, :title => 'YouTube Viewer v0.1' do
  def youtube
    style Inscription, :stroke => white, :weight => 'bold'
  
    r1 = rect :left => 10, :top => 310, :width => 30, :height => 15
    r2 = rect :left => 45, :top => 310, :width => 40, :height => 15
    r3 = rect :left => 90, :top => 310, :width => 30, :height => 15
    r4 = rect :left => 140, :top => 310, :width => 20, :height => 15
  
    background orange..lime, :angle => 90
    @msg = inscription '', :left => 170, :top => 305, :stroke => darkred
    
    url = ask 'URL: '
    url = URL unless url
    base, vid = url.split 'watch?v='
    @msg.text = vid
    download "#{base}watch?v=#{vid}" do |page|
      t = /, "t": "([^"]+)"/.match(page.response.body)[1]
      @v = video("#{base}get_video?video_id=#{vid}&t=#{t}", :autoplay => true, :margin => 10)
    end
    
    inscription 'play', :left => 10, :top => 305;  r1.click{@v.play}
    inscription 'pause', :left => 45, :top => 305;  r2.click{@v.pause}
    inscription 'stop', :left => 90, :top => 305;  r3.click{@v.stop}
    inscription 'DL', :left => 140, :top => 305;  r4.click{@v.stop; @v.remove; clear{youtube}}
  end
  
  youtube
end
