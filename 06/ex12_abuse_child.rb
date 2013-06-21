#
# Demo how to count leaf nodes
#
require 'ex1_task'
require 'ex4_comp_task'

#
# Right way of doing it
#

class Task
  # Lots of code omitted ...
  
  def total_number_basic_tasks
    1
  end
end

class CompositeTask < Task

  # Lots of code omitted ...

  def total_number_basic_tasks
    total = 0
    @sub_tasks.each {|task| total += task.total_number_basic_tasks}
    total
  end

end


