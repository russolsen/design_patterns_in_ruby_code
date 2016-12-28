#!/usr/bin/env ruby

require_relative '../example'

#
# Simple demo of composite with operators
#
require_relative 'ex7_operators'
require 'pp'

example %q{

composite = CompositeTask.new('example')
composite << MixTask.new

pp composite

puts composite[0].get_time_required
composite[1] = AddDryIngredientsTask.new

pp composite
}
