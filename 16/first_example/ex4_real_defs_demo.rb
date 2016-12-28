#!/usr/bin/env ruby

require_relative 'timeout'
require_relative '../../example'

begin
  Timeout.timeout(5) do
    require_relative 'finder'
    require_relative 'ex3_packrat'
    require_relative 'ex4_real_defs'
  end
rescue Timeout::Error
  puts "All done"
end

