#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex9_module_singleton'

class ModuleSingletonTest < Test::Unit::TestCase

  def test_module_based_singleton
    ModuleBasedLogger.level = ModuleBasedLogger::INFO
    assert_equal ModuleBasedLogger::INFO, ModuleBasedLogger.level
    ModuleBasedLogger.info("yes")
    ModuleBasedLogger.warning("yes")
    ModuleBasedLogger.error("yes")

    ModuleBasedLogger.level = ModuleBasedLogger::WARNING
    assert_equal ModuleBasedLogger::WARNING, ModuleBasedLogger.level
    ModuleBasedLogger.info("no")
    ModuleBasedLogger.warning("yes")
    ModuleBasedLogger.error("yes")

    ModuleBasedLogger.level = ModuleBasedLogger::ERROR
    assert_equal ModuleBasedLogger::ERROR, ModuleBasedLogger.level
    ModuleBasedLogger.info("no")
    ModuleBasedLogger.warning("no")
    ModuleBasedLogger.error("yes")

    assert_file_contains('log.txt', ['yes', 'yes', 'yes', 'yes', 'yes','yes'])
  end

  def assert_file_contains(path, lines)
    expected = ''
    lines.each {|line| expected += (line + "\n")}
    assert_equal expected, File.read(path)
  end

end




