#!/usr/bin/env ruby

require '../example'
require 'ex1_duck'
require 'ex3_frog'
require 'ex4_factory_method'

example %q{
pond = FrogPond.new(3)
pond.simulate_one_day
}

