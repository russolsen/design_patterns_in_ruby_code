#!/usr/bin/env ruby

require '../example'
require 'ex3_template_report'

example %q{
report = HTMLReport.new
report.output_report

report = PlainTextReport.new
report.output_report

}
