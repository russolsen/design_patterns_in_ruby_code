#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex2_button_with_cmd'

class MockCommand
  attr_reader :executed

  def initialize
    @executed = false
  end

  def execute
    @executed = true
  end
end

class ButtonWithCommandTest < Test::Unit::TestCase


  def test_button
    cmd = MockCommand.new
    sb = SlickButton.new(cmd)
    assert(!cmd.executed)
    sb.on_button_push
    assert cmd.executed
  end
  
end
