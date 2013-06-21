#!/usr/bin/env ruby

require '../example'
require 'ex1_enhanced_writer'

example %q{
writer = EnhancedWriter.new('out.txt')
writer.write_line('A plain line')

writer.checksumming_write_line('A line with check sum')
puts("Check sum is #{writer.check_sum}")

writer.timestamping_write_line('with time stamp')
writer.numbering_write_line('with line number')

writer.close
}
