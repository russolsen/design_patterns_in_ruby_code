#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex9_tiger_tree'

class TigerTreeTest < Test::Unit::TestCase

  def test_tree
    t = Tree.new('oak')
    assert_equal 'oak', t.instance_variable_get(:@name)
    t.grow
  end

  def test_tiger
    t = Tiger.new('tony')
    assert_equal 'tony', t.instance_variable_get(:@name)
    t.eat
    t.speak
    t.sleep
  end
  
end
