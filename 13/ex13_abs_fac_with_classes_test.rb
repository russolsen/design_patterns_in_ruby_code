#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require_relative 'ex1_duck'
require_relative 'ex3_frog'
require_relative 'ex5_plants'
require_relative 'ex9_tiger_tree'
require_relative 'ex13_abs_fac_with_classes'

class ClassBasedOrganismFactoryTest < Test::Unit::TestCase

  def test_pond_habitat
    f = OrganismFactory.new(Tree, Frog)
    assert_equal Frog, f.new_animal('').class
    assert_equal Tree, f.new_plant('').class
  end

end
