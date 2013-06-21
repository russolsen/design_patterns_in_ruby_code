#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex2_simple_writer'
require 'ex3_forwardable'
require 'ex2_misc_decorators'


class DecoratedWriterTest < Test::Unit::TestCase
  def setup
    File.delete('out') if File.exists?('out')
  end

  def test_decorator
    w = SimpleWriter.new('out')
    assert_simple_writer_behavior(WriterDecorator.new(w))
  end

  def assert_simple_writer_behavior(w)
    assert_equal 0, w.pos
    w.write_line("a")
    assert_equal 2, w.pos
    w.write_line("b")
    assert_equal 4, w.pos
    w.rewind
    assert_equal 0, w.pos
    w.write_line("X")
    w.write_line("Y")
    w.close
    assert_equal "X\nY\n", File.read('out')    
  end
end

