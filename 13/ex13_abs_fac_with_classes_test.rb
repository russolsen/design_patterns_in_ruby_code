#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_duck'
require 'ex3_frog'
require 'ex5_plants'
require 'ex9_tiger_tree'
require 'ex13_abs_fac_with_classes'

class ClassBasedOrganismFactoryTest < Test::Unit::TestCase

  def test_pond_habitat
    f = OrganismFactory.new(Tree, Frog)
    assert_equal Frog, f.new_animal('').class
    assert_equal Tree, f.new_plant('').class
  end

end
