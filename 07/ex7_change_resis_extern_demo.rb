#!/usr/bin/env ruby

require_relative '../example'

example %q{

array=['red', 'green', 'blue', 'purple']

array.each do | color |
  puts color
  if color == 'green'
    array.delete(color)
  end
end

}
