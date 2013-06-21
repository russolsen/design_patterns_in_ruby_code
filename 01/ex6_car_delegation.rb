

class Car
  def initialize
    @engine = Engine.new
  end

  def sunday_drive
    @engine.start
    # cruise out into the country and return ...
    @engine.stop
  end
end

