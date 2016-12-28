#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require_relative 'ex5_engine'

class EngineTest < Test::Unit::TestCase


  def test_engine
    e = Engine.new
    e.start
    e.stop
  end

end

