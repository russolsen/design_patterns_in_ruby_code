#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex5_plants'

class PlantsTest < Test::Unit::TestCase

  def test_algae
    a = Algae.new('kelp')
    assert_equal 'kelp', a.instance_variable_get(:@name)
    a.grow
  end
  
  def test_lily
    l = WaterLily.new('gilded')
    assert_equal 'gilded', l.instance_variable_get(:@name)
    l.grow
  end
  
end
