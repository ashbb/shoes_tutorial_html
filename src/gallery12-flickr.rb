# gallery12-flickr.rb
module FindingFlickr
  require 'hpricot'
  
  PATH = 'http://www.flickr.com/search/?w=all&q=***&m=text'

  def finding_flickr terms
    return if terms.strip.empty?
    download PATH.sub('***', terms.split.join('+')) do |dl|
      photos = []
      doc = Hpricot dl.response.body
      (doc/"img.pc_img").each do |e|
        e.to_s =~ /src=\"(.*.jpg)/
        photos << $1
      end

      yield photos
    end
  end  
end
