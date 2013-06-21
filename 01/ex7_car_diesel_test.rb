#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex7_car_diesel'
require 'ex7_diesel'

class SwitchEngineTest < Test::Unit::TestCase

  def test_switching_engine
    c = Car.new
    assert_equal GasolineEngine, c.instance_variable_get(:@engine).class
    c.sunday_drive
    c.switch_to_diesel
    assert_equal DieselEngine, c.instance_variable_get(:@engine).class
    c.sunday_drive
  end

end

