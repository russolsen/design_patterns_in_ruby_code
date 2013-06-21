#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_duck'
require 'ex3_frog'
require 'ex5_plants'
require 'ex8_factory_classes'

class ClassBasedFactoryMethodPondTest < Test::Unit::TestCase

  def test_pond
    p = Pond.new(3, Frog, 4, Algae)
    assert_equal Array, p.instance_variable_get(:@animals).class
    assert_equal Frog, p.instance_variable_get(:@animals)[0].class
    assert_equal 3, p.instance_variable_get(:@animals).size

    assert_equal Array, p.instance_variable_get(:@plants).class
    assert_equal Algae, p.instance_variable_get(:@plants)[0].class
    assert_equal 4, p.instance_variable_get(:@plants).size
    p.simulate_one_day
  end

end
