#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex8_delegate'
require 'ex7_diesel'

class DelegateToEngineTest < Test::Unit::TestCase

  def test_delegation
    c = Car.new
    assert_equal GasolineEngine, c.instance_variable_get(:@engine).class
    c.sunday_drive
    c.switch_to_diesel
    assert_equal DieselEngine, c.instance_variable_get(:@engine).class
    c.sunday_drive

    c.start_engine
    c.stop_engine
  end

end

