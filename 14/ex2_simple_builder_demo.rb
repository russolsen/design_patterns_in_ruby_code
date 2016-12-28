#!/usr/bin/env ruby

require_relative '../example'

require_relative 'ex1_computer'
require_relative 'ex2_simple_builder'


example %q{

builder = ComputerBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(100000)

computer = builder.computer



pp computer
}

