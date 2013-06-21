#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_enhanced_writer'

class EnhancedWriterTest < Test::Unit::TestCase

  def setup
    File.delete('out') if File.exists?('out')
    @w = EnhancedWriter.new('out')
  end

  def test_write
    @w.write_line("a")
    @w.write_line("b")
    @w.close
    assert_equal "a\nb\n", File.read('out')
  end

  def test_timestamping_write
    @w.timestamping_write_line("hello")
    @w.timestamping_write_line("there")
    @w.close
    assert /.*:hello\n.*:there\n/, File.read('out')
  end

  def test_numbering_write
    @w.numbering_write_line("hello")
    @w.numbering_write_line("there")
    @w.close
    assert /1:hello\n2:there\n/, File.read('out')
  end

  def test_checksumming_write
    @w.checksumming_write_line("a")
    @w.close
    assert_equal 'a'.ord + "\n".ord, @w.check_sum
  end

  def test_double_check_checksumming_write
    @w.checksumming_write_line("the rain in spain")
    @w.checksumming_write_line("falls mainly")
    @w.checksumming_write_line("on the plain")
    @w.close
    sum=0
    File.open('out') {|f| f.each_byte {|b| sum = (sum+b) % 256}}
    assert_equal sum, @w.check_sum
  end

end

