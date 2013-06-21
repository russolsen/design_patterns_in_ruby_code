#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_method'

class MethodByMethodTest < Test::Unit::TestCase


  def test_plant
    p = new_plant(:fleshy, :broad)
    assert_equal "fleshy", p.stem
    assert_equal "broad", p.leaf

    p = new_plant(:woody, :needle)
    assert_equal "woody", p.stem
    assert_equal "needle", p.leaf
  end
  
end
