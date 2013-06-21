#!/usr/bin/env ruby

require '../example'

example %q{

class Report
  def initialize
    @title = 'MonthlyReport'
    @text =  [ 'Things are going', 'really, really well.' ]
  end




  # ...

  def output_report
    output_start
    output_title(@title)
    output_body_start
    for line in @text
      output_line(line)
    end
    output_body_end
    output_end
  end

  def output_start
    puts("<html>")
  end

  def output_title(title)
    puts('  <head>')
    puts("    <title>#{title}</title>")
    puts('  </head>')
  end

  # ...





  def output_line(line)
    puts("    <p>#{line}</p>")
  end

  def output_body_start
  end

  def output_body_end
  end

  def output_end
  end
end


r = Report.new
r.output_report
}
