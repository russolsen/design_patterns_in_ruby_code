#!/usr/bin/env ruby

require '../example'

#
# Simple demo of walking the ancestry tree
# 

require 'ex1_task'
#
# Task / Composite with parent pointers
#

example %q{
require 'ex9_parent'

c1 = CompositeTask.new('grandpa')
c2 = CompositeTask.new('dad')
c3 = CompositeTask.new('dad')

c1.add_sub_task(c2)
c2.add_sub_task(c3)

task = c3
while task          # while the task is not null
  puts "task: #{task}"
  task = task.parent
end
}
