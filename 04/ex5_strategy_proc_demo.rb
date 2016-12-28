#!/usr/bin/env ruby

require_relative '../example'

require_relative 'ex5_strategy_proc'

example %q{

report = Report.new &HTML_FORMATTER
report.output_report
}


example %q{

report = Report.new do |context|
  puts("***** #{context.title} *****")
  context.text.each do |line|
    puts(line)
  end
end


report.output_report
}
