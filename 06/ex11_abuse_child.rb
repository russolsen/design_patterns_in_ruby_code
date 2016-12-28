#
# Demo how to count leaf nodes
#
require_relative 'ex1_task'
require_relative 'ex4_comp_task'

#
# Wrong way of doing it
#
class CompositeTask < Task

  # Lots of code omitted ...

  def total_number_basic_tasks
    return @sub_tasks.length
  end

end


