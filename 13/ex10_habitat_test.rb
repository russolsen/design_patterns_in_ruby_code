#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_duck'
require 'ex9_tiger_tree'
require 'ex10_habitat'

class HabitatTest < Test::Unit::TestCase

  def test_habitat
    p = Habitat.new(3, Tiger, 4, Tree)
    assert_equal Array, p.instance_variable_get(:@animals).class
    assert_equal Tiger, p.instance_variable_get(:@animals)[0].class
    assert_equal 3, p.instance_variable_get(:@animals).size

    assert_equal Array, p.instance_variable_get(:@plants).class
    assert_equal Tree, p.instance_variable_get(:@plants)[0].class
    assert_equal 4, p.instance_variable_get(:@plants).size
    p.simulate_one_day
  end

end
