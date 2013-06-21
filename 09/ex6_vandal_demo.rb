#!/usr/bin/env ruby

require '../example'

example %q{


# Don't do this!

begin
  class Fixnum
    def abs
      return 42
    end
  end

  puts 79.abs
  puts -1234.abs
  rescue
    puts "Something bad happened"
  end
}
