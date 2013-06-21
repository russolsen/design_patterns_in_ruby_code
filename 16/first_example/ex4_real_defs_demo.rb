#!/usr/bin/env ruby

require 'timeout'
require '../../example'

begin
  Timeout.timeout(5) do
    require 'finder'
    require 'ex3_packrat'
    require 'ex4_real_defs'
  end
rescue Timeout::Error
  puts "All done"
end

