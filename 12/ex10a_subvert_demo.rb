#!/usr/bin/env ruby

require '../example'

require 'ex8_class_singleton'

example %q{

a_second_logger = ClassBasedLogger.clone
a_second_logger.error('using a second logger')

puts ClassBasedLogger
puts a_second_logger


}

