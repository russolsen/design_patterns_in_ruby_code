#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_duck'
require 'ex2_pond'

class PondTest < Test::Unit::TestCase


  def test_pond
    p = Pond.new(4)
    assert_equal Array, p.instance_variable_get(:@ducks).class
    assert_equal 4, p.instance_variable_get(:@ducks).size
    p.simulate_one_day
  end
  
end
