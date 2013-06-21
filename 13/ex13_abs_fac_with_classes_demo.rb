#!/usr/bin/env ruby

require '../example'
require 'ex1_duck'
require 'ex3_frog'
require 'ex5_plants'
require 'ex9_tiger_tree'
require 'ex12_abs_fac_habitat'
require 'ex13_abs_fac_with_classes'

example %q{
jungle_organism_factory = OrganismFactory.new(Tree, Tiger)
pond_organism_factory = OrganismFactory.new(WaterLily, Frog)

jungle = Habitat.new(1, 4, jungle_organism_factory)
jungle.simulate_one_day

pond = Habitat.new( 2, 4, pond_organism_factory)
pond.simulate_one_day
}

