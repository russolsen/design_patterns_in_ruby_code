#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex3_block_button'

class ButtonWithBlockTest < Test::Unit::TestCase


  def test_button
    called = false
    sb = SlickButton.new { called = true }
    assert(!called)
    sb.on_button_push
    assert(called)
  end

end

