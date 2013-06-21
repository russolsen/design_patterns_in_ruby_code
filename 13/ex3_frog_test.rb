#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex3_frog'

class FrogTest < Test::Unit::TestCase
  def test_frog
    d = Frog.new('fred')
    assert_equal 'fred', d.instance_variable_get(:@name)

    d.eat
    d.speak
    d.sleep
  end
  
end
