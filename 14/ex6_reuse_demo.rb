#!/usr/bin/env ruby

require_relative '../example'
require 'pp'

require_relative 'ex1_computer'
require_relative 'ex3_polymorphic'

example %q{

builder = LaptopBuilder.new
builder.add_hard_disk(100000)
builder.turbo

computer1 = builder.computer
computer2 = builder.computer


puts "Should be the same:"
puts computer1
puts computer2
}
