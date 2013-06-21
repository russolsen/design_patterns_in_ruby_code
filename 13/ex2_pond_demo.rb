#!/usr/bin/env ruby

require '../example'
require 'ex1_duck'
require 'ex2_pond'

example %q{
pond = Pond.new(3)
pond.simulate_one_day
}

