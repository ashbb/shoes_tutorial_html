# sample15-1.rb
Shoes.app :width => 150, :height => 40 do
  para 'Hello world!'
  raise rescue Shoes.p($@.shift + "\nThis is a test message.")
  raise rescue debug($@.shift + "\nRunning Shoes on " + RUBY_PLATFORM)
  raise rescue error($@.shift + "\nThis is an error message.")
  raise rescue info($@.shift + "\nShoes release name is " + Shoes::RELEASE_NAME)
end