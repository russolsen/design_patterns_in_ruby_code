#!/usr/bin/env ruby
require '../example'

require 'ex4_base'
require 'ex3_members'

example %q{

tony_tiger = Tiger.new('tony')
se_jungle = Jungle.new('southeastern jungle tigers')
se_jungle.add_sub_population(tony_tiger)

tony_tiger.parent_population  # Should be the southeastern jungle
}

example %q{
se_jungle = Jungle.new('southeastern jungle tigers')


sw_jungle = Jungle.new('southwestern jungle tigers')
region = Region.new('south')
region.add_sub_population(se_jungle)
region.add_sub_population(sw_jungle)
}
  
  
example %q{
tony_tiger = Tiger.new('tony')

species = Species.new('P. tigris')
species.add_sub_classification(tony_tiger)

tony_tiger.parent_classification  # Should be P. tigris
}
