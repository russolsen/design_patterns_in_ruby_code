#!/usr/bin/env ruby

require_relative '../example'
require_relative 'ex1_duck'
require_relative 'ex3_frog'
require_relative 'ex5_plants'
require_relative 'ex9_tiger_tree'
require_relative 'ex11_abs_factories'
require_relative 'ex12_abs_fac_habitat'

example %q{
jungle = Habitat.new(1, 4, JungleOrganismFactory.new)
jungle.simulate_one_day

pond = Habitat.new( 2, 4, PondOrganismFactory.new)
pond.simulate_one_day
}

