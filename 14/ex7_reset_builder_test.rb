#!/usr/bin/env ruby

require 'test/unit'
require 'ex1_computer'
require 'ex3_polymorphic'
require 'ex7_reset_builder'


class ResetBuilderTest < Test::Unit::TestCase

  def test_reset
    builder = LaptopBuilder.new
    builder.add_hard_disk(100000)
    builder.turbo
    computer1 = builder.computer

    assert_equal computer1.drives[0].type, :hard_disk
    assert_equal computer1.drives[0].size, 100000
    assert_equal computer1.motherboard.memory_size, 1000

    builder.reset
    builder.add_hard_disk(50000)
    builder.memory_size=500
    computer2 = builder.computer

    assert_not_equal computer1, computer2
    
    assert_equal computer2.drives[0].type, :hard_disk
    assert_equal computer2.drives[0].size, 50000
    assert_equal computer2.motherboard.memory_size, 500
  end

end


