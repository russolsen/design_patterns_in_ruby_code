#!/usr/bin/env ruby

require '../example'

require 'ex2_simple_writer'
require 'ex2_decorator'
require 'ex2_misc_decorators'

example %q{
writer = NumberingWriter.new(SimpleWriter.new('final.txt'))

writer.write_line('Hello out there')
}

example %q{
writer = TimeStampingWriter.new(NumberingWriter.new(
             CheckSummingWriter.new(SimpleWriter.new('final.txt'))))

writer.write_line('Hello out there')


pp writer
}
