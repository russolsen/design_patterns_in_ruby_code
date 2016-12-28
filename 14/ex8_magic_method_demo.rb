#!/usr/bin/env ruby

require_relative '../example'

require_relative 'ex1_computer'
require_relative 'ex2_simple_builder'
require_relative 'ex8_magic_method'



example %q{
builder = ComputerBuilder.new
builder.add_dvd_and_harddisk

pp builder.computer
puts 

builder = ComputerBuilder.new
builder.add_turbo_and_dvd_and_harddisk

pp builder.computer
}
