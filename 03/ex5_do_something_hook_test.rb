#!/usr/bin/env ruby

require 'test/unit'
require 'pp'
require 'stringio'

require 'ex5_do_something_hook'


class DosomethingHookReportTest < Test::Unit::TestCase

  def test_hacked_report
    r = PlainTextReport.new
    output = capture_output { r.output_report }
    assert /Things/ =~ output
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



