#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require_relative 'ex1_duck'
require_relative 'ex3_frog'
require_relative 'ex5_plants'
require_relative 'ex9_tiger_tree'
require_relative 'ex11_abs_factories'

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
