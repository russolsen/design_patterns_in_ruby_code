#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require_relative 'ex1_duck'
require_relative 'ex3_frog'
require_relative 'ex5_plants'
require_relative 'ex7_param_pond'

class ParameterizedPondTest < Test::Unit::TestCase

  def test_duck_lily_pond
    p = DuckWaterLilyPond.new(3, 4)
    assert_equal Array, p.instance_variable_get(:@animals).class
    assert_equal 3, p.instance_variable_get(:@animals).size
    assert_equal Array, p.instance_variable_get(:@plants).class
    assert_equal 4, p.instance_variable_get(:@plants).size
    p.simulate_one_day
  end

  def test_factory_method
    p = DuckWaterLilyPond.new(3, 4)
    assert_equal Duck, p.new_organism(:animal, 'fred').class
    assert_equal WaterLily, p.new_organism(:plant, 'gilded').class
  end
  
end
