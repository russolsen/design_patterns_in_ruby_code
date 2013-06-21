#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_message'

class MessageTest < Test::Unit::TestCase

  def test_adapter_for_file
    message = Message.new('fred', 'http://russolsen.com/foo/bar', 'message')
    assert_equal 'fred', message.from
    assert_equal 'http', message.to.scheme
    assert_equal 'russolsen.com', message.to.host
    assert_equal '/foo/bar', message.to.path
    assert_equal 'message', message.body
  end
  
end
