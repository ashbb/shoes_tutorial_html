# sample28.rb
Shoes.app :width => 450, :height => 100 do
  stack :margin => 10 do
    url = 'http://shoooes.net/dist/shoes-0.r1057.exe'
    status = para "Downloading #{url}"
    p = progress :width => 1.0
  
    download url,
      :save => Dir.pwd + '/' + File.basename(url),
      :start => proc{|dl| status.text = 'Connecting...'},
      :progress => proc{|dl| 
        status.text = "Transferred #{dl.transferred} of #{dl.length} bytes (#{dl.percent}%)"
        p.fraction = dl.percent * 0.01},
      :finish => proc{|dl| status.text = 'Download finished'},
      :error => proc{|dl, err| status.text = "Error: #{err}" }
  end
end