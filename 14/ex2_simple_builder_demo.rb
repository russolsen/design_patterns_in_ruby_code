#!/usr/bin/env ruby

require '../example'

require 'ex1_computer'
require 'ex2_simple_builder'


example %q{

builder = ComputerBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(100000)

computer = builder.computer



pp computer
}

