#!/usr/bin/env ruby

require '../example'

require 'ex1_array_iterator'

example %q{

array = ['red', 'green', 'blue']

i = ArrayIterator.new(array)
while i.has_next?
  puts "item: #{i.next_item}"
end
}
