#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_duck'
require 'ex3_frog'
require 'ex5_plants'
require 'ex6_extended_pond'

class ExtendedPondTest < Test::Unit::TestCase


  def test_duck_lily_pond
    p = DuckWaterLilyPond.new(3, 4)
    assert_equal Array, p.instance_variable_get(:@animals).class
    assert_equal 3, p.instance_variable_get(:@animals).size
    assert_equal Array, p.instance_variable_get(:@plants).class
    assert_equal 4, p.instance_variable_get(:@plants).size
    p.simulate_one_day
  end
  
  def test_frog_algae_pond
    p = FrogAlgaePond.new(3, 4)
    assert_equal Array, p.instance_variable_get(:@animals).class
    assert_equal 3, p.instance_variable_get(:@animals).size
    assert_equal Array, p.instance_variable_get(:@plants).class
    assert_equal 4, p.instance_variable_get(:@plants).size
    p.simulate_one_day
  end
  
end
