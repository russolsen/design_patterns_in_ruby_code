#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex3_vehicle'
require 'ex4_car'

class CarTest < Test::Unit::TestCase

  def test_cat
    c = Car.new
    c.start_engine
    c.stop_engine
    c.sunday_drive
  end

end

