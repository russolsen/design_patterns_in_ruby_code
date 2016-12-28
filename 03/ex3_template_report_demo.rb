#!/usr/bin/env ruby

require_relative '../example'
require_relative 'ex3_template_report'

example %q{
report = HTMLReport.new
report.output_report

report = PlainTextReport.new
report.output_report

}
