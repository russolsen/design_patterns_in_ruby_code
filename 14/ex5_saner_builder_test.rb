#!/usr/bin/env ruby

require 'test/unit'
require 'ex1_computer'
require 'ex2_simple_builder'
require 'ex5_saner_builder'


class SanerBuilderTest < Test::Unit::TestCase

  def test_hard_disk_check
    builder = ComputerBuilder.new
    computer = builder.computer
    assert_equal 1, computer.drives.size
    assert_equal :hard_disk, computer.drives[0].type
  end
    

end


