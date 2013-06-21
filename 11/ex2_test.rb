#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex2_simple_writer'
require 'ex2_decorator'
require 'ex2_misc_decorators'

class DecoratedWriterTest < Test::Unit::TestCase

  def setup
    File.delete('out') if File.exists?('out')
  end

  def test_simple_writer
    assert_simple_writer_behavior(SimpleWriter.new('out'))
  end

  def test_decorator
    w = SimpleWriter.new('out')
    assert_simple_writer_behavior(WriterDecorator.new(w))
  end

  def test_check_sum_writer
    assert_simple_writer_behavior(CheckSummingWriter.new(SimpleWriter.new('out')))
    w = CheckSummingWriter.new(SimpleWriter.new('out'))
    assert_equal 0, w.check_sum
    w.write_line('ab')
    assert_equal 'a'.ord + 'b'.ord + "\n".ord, w.check_sum
  end

  def test_double_check_cksum
    w = CheckSummingWriter.new(SimpleWriter.new('out'))
    w.write_line('four score')
    w.write_line('and seven')
    w.write_line('years ago')
    w.close
    sum=0
    File.open('out') {|f| f.each_byte {|b| sum = (sum+b) % 256}}
    assert_equal sum, w.check_sum
  end

  def test_line_number_writer
    w = NumberingWriter.new(SimpleWriter.new('out'))
    w.write_line('ab')
    w.write_line('cd')
    w.close
    assert_equal "1: ab\n2: cd\n", File.read('out')
  end

  def test_timestamp_writer
    w = TimeStampingWriter.new(SimpleWriter.new('out'))
    w.write_line('ab')
    w.write_line('cd')
    w.close
    assert /.*: ab\n.*: cd\n/ =~ File.read('out')
  end

  def assert_simple_writer_behavior(w)
    assert_equal 0, w.pos
    w.write_line("a")
    assert_equal 2, w.pos
    w.write_line("b")
    assert_equal 4, w.pos
    w.rewind
    assert_equal 0, w.pos
    w.write_line("A")
    w.write_line("B")
    w.close
    assert_equal "A\nB\n", File.read('out')    
  end
end

