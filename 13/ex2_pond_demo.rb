#!/usr/bin/env ruby

require_relative '../example'
require_relative 'ex1_duck'
require_relative 'ex2_pond'

example %q{
pond = Pond.new(3)
pond.simulate_one_day
}

