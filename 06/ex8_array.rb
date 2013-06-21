require 'ex1_task'

class CompositeTask < Array
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def get_time_required
    time=0.0
    each {|task| time += task.get_time_required}
    time
  end
end

class MakeBatterTask < CompositeTask 
  def initialize
    super('Make batter')
    self << AddDryIngredientsTask.new
    self << AddLiquidsTask.new
    self << MixTask.new
  end
end
