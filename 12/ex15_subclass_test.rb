#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex15_subclass'

class CureTestingBluesTest < Test::Unit::TestCase

  def test_private_new
    assert_raise(NoMethodError){ SingletonLogger.new }
  end

  def test_public_new
    logger = SimpleLogger.new
  end

  def test_class_relationship
    assert SingletonLogger.instance.kind_of?(SimpleLogger)
  end

end




