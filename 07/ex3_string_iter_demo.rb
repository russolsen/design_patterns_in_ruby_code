#!/usr/bin/env ruby

require '../example'

require 'ex1_array_iterator'

example %q{
i = ArrayIterator.new('abc')

while i.has_next?
  puts "item: #{i.next_item.chr}"
end
}

