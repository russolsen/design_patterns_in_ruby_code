
class FillPanTask < Task

  def initialize
    super('Fill pan')
  end

  def get_time_required
    2
  end

end

class FrostTask < Task

  def initialize
    super('Frost')
  end

  def get_time_required
    2
  end

end

class BakeTask < Task

  def initialize
    super('Bake')
  end

  def get_time_required
    2
  end

end

class LickSpoonTask < Task

  def initialize
    super('Bake')
  end

  def get_time_required
    100
  end

end


class MakeCakeTask < CompositeTask
  def initialize
    super('Make cake')
    add_sub_task( MakeBatterTask.new )
    add_sub_task( FillPanTask.new )
    add_sub_task( BakeTask.new )
    add_sub_task( FrostTask.new )
    add_sub_task( LickSpoonTask.new )
  end
end
