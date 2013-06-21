#!/usr/bin/env ruby

require '../example.rb'

example %q{

s = 'Peter piper picked a peck of pickled peppers'
s.scan(/[Pp]\w*/) { |word| puts "The word is #{word}" }

}
