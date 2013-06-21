#!/usr/bin/env ruby

require 'test/unit'
require 'pp'
require 'stringio'

require 'ex2_hacked_report'


class HackedTest < Test::Unit::TestCase

  def test_hacked_report
    r = Report.new
    output = capture_output { r.output_report(:plain) }
puts output
    assert /Things/ =~ output

    output = capture_output { r.output_report(:html) }
puts output
    assert /<html>/ =~ output
    assert /<title>Monthly/ =~ output
    assert_raise(RuntimeError){ r.output_report(:pdf) }

  end

  def capture_output(&block)
    output = StringIO.new
    begin
       $stdout = output
       block.call
    ensure
       $stdout = STDOUT
    end
    output.string
  end

end



