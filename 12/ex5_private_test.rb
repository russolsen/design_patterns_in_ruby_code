#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex3_simple_logger'
require 'ex5_private'

class PrivateNewSingletonTest < Test::Unit::TestCase

  def test_private_new
    assert_raise(NoMethodError){ SimpleLogger.new }
  end

end




