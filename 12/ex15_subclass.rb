require 'singleton'

class SimpleLogger
  # All of the logging functionality in this class..
end


class SingletonLogger < SimpleLogger
  include Singleton
end
