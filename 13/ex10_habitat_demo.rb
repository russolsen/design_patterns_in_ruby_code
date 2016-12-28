#!/usr/bin/env ruby

require_relative '../example'
require_relative 'ex1_duck'
require_relative 'ex3_frog'
require_relative 'ex5_plants'
require_relative 'ex9_tiger_tree'
require_relative 'ex10_habitat'

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
