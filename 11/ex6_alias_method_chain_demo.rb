#!/usr/bin/env ruby

require '../example'

require 'rubygems'
require 'facets'


example %q{

class Writer
  def write_line(line)
    puts(line)
  end

  def write_line_with_numbering(line)
    @number = 1 unless @number
    write_line_without_numbering("#{@number}: #{line}")
    @number += 1
  end

  def write_line_with_timestamp(line)
    write_line_without_timestamp("#{Time.new}: #{line}")
  end

  alias_method_chain :write_line, :numbering
  alias_method_chain :write_line, :timestamp
end

w=Writer.new
w.write_line('hello world')

}
