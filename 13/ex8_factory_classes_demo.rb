#!/usr/bin/env ruby

require_relative '../example'
require_relative 'ex1_duck'
require_relative 'ex3_frog'
require_relative 'ex5_plants'
require_relative 'ex8_factory_classes'

example %q{
pond = Pond.new(3, Duck, 2, WaterLily)
pond.simulate_one_day
}

