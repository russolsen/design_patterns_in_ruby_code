#!/usr/bin/env ruby

require 'test/unit'
require 'ex1_computer'
require 'ex2_simple_builder'
require 'ex8_magic_method'


class MagicMethodTest < Test::Unit::TestCase

  def test_mm
    builder = ComputerBuilder.new
    builder.add_turbo_and_dvd_and_cd_and_harddisk
    computer = builder.computer

    assert_equal computer.drives[0].type, :dvd
    assert_equal computer.drives[1].type, :cd
    assert_equal computer.drives[2].type, :hard_disk
    assert_equal computer.drives[2].size, 100000
    assert_equal computer.motherboard.cpu.class, TurboCPU
  end

end


