# sample50.rb
Shoes.setup do
  gem 'sys-uname'
end

require 'sys/uname'
include Sys

Shoes.app :width => 300, :height => 50, :resizable => false do
    @platform = para Uname.sysname
end