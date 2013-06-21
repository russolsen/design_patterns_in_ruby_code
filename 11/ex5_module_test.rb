#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex2_simple_writer'
require 'ex5_module'

class ModuleDecoratorTest < Test::Unit::TestCase

  def setup
    File.delete('out') if File.exists?('out')
  end

  def test_simple_writer
w = SimpleWriter.new('out')
w.extend(NumberingWriter)
w.extend(TimeStampingWriter)

w.write_line('hello')
    w.close

    assert /1: .*: hello\n/ =~ File.read('out')
  end

end
