

class SimpleLogger

  # Lots of code deleted ...

  @@instance = SimpleLogger.new

  def self.instance
    return @@instance
  end

  private_class_method :new
end
