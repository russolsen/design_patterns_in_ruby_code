#!/usr/bin/env ruby

require_relative '../example'
require_relative 'ex1_duck'
require_relative 'ex3_frog'
require_relative 'ex4_factory_method'

example %q{
pond = FrogPond.new(3)
pond.simulate_one_day
}

