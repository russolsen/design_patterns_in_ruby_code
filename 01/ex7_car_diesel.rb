

class Car
  def initialize
    @engine = GasolineEngine.new
  end

  def sunday_drive
    @engine.start
    # cruise out into the country and return ...
    @engine.stop
  end

  def switch_to_diesel
    @engine = DieselEngine.new
  end
end

