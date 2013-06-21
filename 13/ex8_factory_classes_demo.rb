#!/usr/bin/env ruby

require '../example'
require 'ex1_duck'
require 'ex3_frog'
require 'ex5_plants'
require 'ex8_factory_classes'

example %q{
pond = Pond.new(3, Duck, 2, WaterLily)
pond.simulate_one_day
}

