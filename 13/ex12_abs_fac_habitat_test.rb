#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require_relative 'ex1_duck'
require_relative 'ex3_frog'
require_relative 'ex5_plants'
require_relative 'ex9_tiger_tree'
require_relative 'ex11_abs_factories'
require_relative 'ex12_abs_fac_habitat'

class AbsFactoryHabitatTest < Test::Unit::TestCase

  def test_pond_habitat
    pf = PondOrganismFactory.new
    h = Habitat.new( 1, 1, pf)
    assert_equal Frog, h.instance_variable_get(:@animals)[0].class
    assert_equal Algae, h.instance_variable_get(:@plants)[0].class
    h.simulate_one_day
  end

  def test_jungle_habitat
    jf = JungleOrganismFactory.new
    h = Habitat.new( 1, 1, jf)
    assert_equal Tiger, h.instance_variable_get(:@animals)[0].class
    assert_equal Tree, h.instance_variable_get(:@plants)[0].class
    h.simulate_one_day
  end

end
