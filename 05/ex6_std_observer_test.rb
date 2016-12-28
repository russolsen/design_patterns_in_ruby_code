#!/usr/bin/env ruby

require 'test/unit'
require 'pp'
require 'stringio'

require_relative 'ex6_std_observer'

#
# Use the same test methods as ex4
#
require_relative 'ex4_subject_test_methods_module'

class StandardObserverTest < Test::Unit::TestCase
  include SubjectTestMethods
end



