#!/usr/bin/env ruby
require '../example'

require 'ex11_mm_virtual'
require 'ex1_account'


example %q{

class DirectCall
  def add(a, b)
    a+b
  end
end   

class MethodMissingCall
  def method_missing(name, a, b)
    a+b
  end
end


dc = DirectCall.new

t0 = Time.new
100000.times { dc.add(2,2) }
t1 = Time.new
puts "Time for direct call: #{t1-t0}"

mmc = MethodMissingCall.new
t0 = Time.new
100000.times { mmc.add(2,2) }
t1 = Time.new
puts "Time for direct call: #{t1-t0}"

}

