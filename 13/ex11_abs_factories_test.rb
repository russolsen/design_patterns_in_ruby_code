#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_duck'
require 'ex3_frog'
require 'ex5_plants'
require 'ex9_tiger_tree'
require 'ex11_abs_factories'

class AbsFactoryTest < Test::Unit::TestCase

  def test_pond_factory
    pf = PondOrganismFactory.new
    assert_equal Frog, pf.new_animal('').class
    assert_equal Algae, pf.new_plant('').class
  end

  def test_jungle_factory
    pf = JungleOrganismFactory.new
    assert_equal Tiger, pf.new_animal('').class
    assert_equal Tree, pf.new_plant('').class
  end
end
