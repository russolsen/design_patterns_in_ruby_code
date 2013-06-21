#!/usr/bin/env ruby

require '../example'

require 'ex1_computer'
require 'ex2_simple_builder'
require 'ex8_magic_method'



example %q{
builder = ComputerBuilder.new
builder.add_dvd_and_harddisk

pp builder.computer
puts 

builder = ComputerBuilder.new
builder.add_turbo_and_dvd_and_harddisk

pp builder.computer
}
