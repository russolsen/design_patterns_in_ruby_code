#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex3_simple_logger'
require 'ex4_manual'

class ManualSingletonTest < Test::Unit::TestCase

  def test_singleton
    logger1 = SimpleLogger.instance
    logger2 = SimpleLogger.instance
    assert_equal logger1, logger2
    assert_equal SimpleLogger, logger1.class
  end

end




