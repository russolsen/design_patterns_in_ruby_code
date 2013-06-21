#!/usr/bin/env ruby

require '../example'

example %q{

class Report
  def initialize
    @title = 'MonthlyReport'
    @text =  ['Things are going', 'really, really well.']
  end

  def output_report
    puts('<html>')
    puts('  <head>')
    puts('    <title>#{@title}</title>')
    # output the rest of the report ...
  end
end


r = Report.new
r.output_report

}
