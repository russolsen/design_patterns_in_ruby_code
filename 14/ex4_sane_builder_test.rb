#!/usr/bin/env ruby

require 'test/unit'
require 'ex1_computer'
require 'ex2_simple_builder'
require 'ex4_sane_builder'


class SaneBuilderTest < Test::Unit::TestCase

  def test_memory_check
    builder = ComputerBuilder.new
    builder.memory_size=1
    assert_raise(RuntimeError){ builder.computer }
  end

  def test_number_drive_check
    builder = ComputerBuilder.new
    5.times { builder.add_hard_disk(500) }
    assert_raise(RuntimeError){ builder.computer }
  end
    
  def test_hard_disk_check
    builder = ComputerBuilder.new
    4.times { builder.add_dvd }
    assert_raise(RuntimeError){ builder.computer }
  end
    

end

