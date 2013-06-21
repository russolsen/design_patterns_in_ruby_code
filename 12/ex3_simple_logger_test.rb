#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex3_simple_logger'

class SimpleLoggerTest < Test::Unit::TestCase

  def setup
    File.delete('log.txt') if File.exists?('log.txt')
  end

  def test_default
    log = SimpleLogger.new
    assert_equal SimpleLogger::WARNING, log.level 
    log.info "no"
    log.warning "yes"
    log.error "yes"
    assert_file_contains('log.txt', ['yes', 'yes'])
  end

  def test_info_level
    log = SimpleLogger.new
    log.level =  SimpleLogger::INFO
    log.info "yes"
    log.warning "yes"
    log.error "yes"
    assert_file_contains('log.txt', ['yes', 'yes', 'yes'])
  end

  def test_error_level
    log = SimpleLogger.new
    log.level =  SimpleLogger::ERROR
    log.info "no"
    log.warning "no"
    log.error "yes"
    assert_file_contains('log.txt', ['yes'])
  end

  def assert_file_contains(path, lines)
    expected = ''
    lines.each {|line| expected += (line + "\n")}
    assert_equal expected, File.read(path)
  end

end




