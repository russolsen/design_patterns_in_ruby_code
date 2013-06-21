#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex3_vehicle'

class VehicleTest < Test::Unit::TestCase


  def test_vehicle
    v = Vehicle.new
    v.start_engine
    v.stop_engine
  end

end

