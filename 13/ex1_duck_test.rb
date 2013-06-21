#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_duck'

class DuckTest < Test::Unit::TestCase


  def test_duck
    d = Duck.new('fred')
    assert_equal 'fred', d.instance_variable_get(:@name)

    d.eat
    d.speak
    d.sleep
  end
  
end
