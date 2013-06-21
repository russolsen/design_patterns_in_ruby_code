#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex8_class_singleton'

class ClassSingletonTest < Test::Unit::TestCase

  def test_default
    ClassBasedLogger.level = ClassBasedLogger::INFO
    assert_equal ClassBasedLogger::INFO, ClassBasedLogger.level
    ClassBasedLogger.info("yes")
    ClassBasedLogger.warning("yes")
    ClassBasedLogger.error("yes")

    ClassBasedLogger.level = ClassBasedLogger::WARNING
    assert_equal ClassBasedLogger::WARNING, ClassBasedLogger.level
    ClassBasedLogger.info("no")
    ClassBasedLogger.warning("yes")
    ClassBasedLogger.error("yes")

    ClassBasedLogger.level = ClassBasedLogger::ERROR
    assert_equal ClassBasedLogger::ERROR, ClassBasedLogger.level
    ClassBasedLogger.info("no")
    ClassBasedLogger.warning("no")
    ClassBasedLogger.error("yes")

    assert_file_contains('log.txt', ['yes', 'yes', 'yes', 'yes', 'yes','yes'])
  end

  def assert_file_contains(path, lines)
    expected = ''
    lines.each {|line| expected += (line + "\n")}
    assert_equal expected, File.read(path)
  end

end




