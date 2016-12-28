#!/usr/bin/env ruby

require_relative '../example'

require_relative 'ex3_simple_logger'


class LoggerThatDoesSomethingBad
end

example %q{

$logger = SimpleLogger.new

$logger = LoggerThatDoesSomethingBad.new

}

example %q{
Logger = SimpleLogger.new

Logger = LoggerThatDoesSomethingBad.new
}

