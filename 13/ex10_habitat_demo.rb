#!/usr/bin/env ruby

require '../example'
require 'ex1_duck'
require 'ex3_frog'
require 'ex5_plants'
require 'ex9_tiger_tree'
require 'ex10_habitat'

example %q{
jungle = Habitat.new(1, Tiger, 4, Tree)
jungle.simulate_one_day

pond = Habitat.new( 2, Duck, 4, WaterLily)
pond.simulate_one_day
}

example %q{
unstable = Habitat.new( 2, Tiger, 4, WaterLily)
unstable.simulate_one_day
}
